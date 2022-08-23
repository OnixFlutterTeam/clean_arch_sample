import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:clean_arch_sample/src/core/arch/domain/entities/common/either.dart';
import 'package:clean_arch_sample/src/core/arch/domain/entities/dio_error_handler/dio_error_models.dart';
import 'package:clean_arch_sample/src/core/arch/logger.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:retry/retry.dart';

typedef ParseJsonApiError<DE> = Future<DE?> Function(Map<String, dynamic>?);
typedef MakeRequest<T> = Future<T> Function();

/// Protocol for processing [MakeRequest] requests from [Dio] returns [Either] as a result
/// The left side is responsible for errors like [CommonResponseError]
/// The right side returns the query result Dio [Response]
abstract class DioErrorHandler<DE> {
  Future<Either<CommonResponseError<DE>, T>> processRequest<T>(
    MakeRequest<T> makeRequest, {
    bool checkNetworkConnection = true,
  });
}

/// Basic implementation of [DioErrorHandler]
///
/// In case of an error corresponding to [retryStatusCodes], 3 attempts are made to retry the data.
/// If there is no internet or connection problems, returns an error on the left side Either [CommonResponseError.noNetwork]
/// If the server rejected the request with the code [HttpStatus.unauthorized] returns Either [CommonResponseError.unAuthorized] on the left side
/// If the server has thrown an error corresponding to the contract [DefaultApiError] returns [CommonResponseError.customError]
/// If [DioError] does not match any of the criteria, [CommonResponseError.undefinedError] is returned
class DioErrorHandlerImpl<DE> implements DioErrorHandler<DE> {
  /// Number of attempts to re-execute the request
  static const defaultMaxAttemptsCount = 2;

  /// Error codes that require re-execution of the request (without bad request)
  static const retryStatusCodesWithoutBadReq = [
    HttpStatus.unprocessedEntity,
    HttpStatus.forbidden,
    HttpStatus.unauthorized,
    HttpStatus.unsupportedMediaType,
    HttpStatus.badRequest,
  ];

  /// Basic list of error codes that require re-execution of the request
  static const defaultRetryStatusCodes = [
    HttpStatus.badGateway,
    HttpStatus.serviceUnavailable,
  ];

  /// List of error codes indicating unknown server behavior - [CommonResponseError.undefinedError]
  static const defaultUndefinedErrorCodes = [
    HttpStatus.internalServerError,
    HttpStatus.notImplemented,
    HttpStatus.badGateway,
    HttpStatus.serviceUnavailable,
  ];

  @protected
  final Connectivity connectivity;
  @protected
  final InternetConnectionChecker internetConnectionChecker;
  @protected
  final List<int> retryStatusCodes;
  @protected
  final List<int> undefinedErrorCodes;
  final int maxAttemptsCount;
  @protected
  ParseJsonApiError<DE> parseJsonApiError;

  DioErrorHandlerImpl({
    required this.connectivity,
    required this.internetConnectionChecker,
    required this.parseJsonApiError,
    this.maxAttemptsCount = defaultMaxAttemptsCount,
    this.retryStatusCodes = defaultRetryStatusCodes,
    this.undefinedErrorCodes = defaultUndefinedErrorCodes,
  });

  @override
  Future<Either<CommonResponseError<DE>, T>> processRequest<T>(
    MakeRequest<T> makeRequest, {
    bool checkNetworkConnection = true,
  }) async {
    final resultConnectivity = await connectivity.checkConnectivity();
    final hasConnection = await internetConnectionChecker.hasConnection;

    if (checkNetworkConnection &&
        (resultConnectivity == ConnectivityResult.none || !hasConnection)) {
      return const Either.left(CommonResponseError.noNetwork());
    }

    try {
      final response = await retry(
        makeRequest,
        maxAttempts: maxAttemptsCount,
        retryIf: (exception) => _retryPolicy(
          exception: exception,
          retryStatusCodes: retryStatusCodes,
        ),
      );
      if (_isResponseSuccess(response as Response<dynamic>)) {
        return Either.right(response);
      }
      return Either.right(response);
    } on DioError catch (e) {
      Logger.printException(e);
      return Either.left(await _processDioError(e));
    } on Exception catch (e) {
      Logger.printException(e);
      return Either.left(CommonResponseError.undefinedError(e));
    }
  }

  bool _isResponseSuccess(Response<dynamic> response) {
    if (response.statusCode == HttpStatus.kCodeSuccess200 ||
        response.statusCode == HttpStatus.kCodeSuccess201 &&
            response.data != null) {
      return true;
    }
    return false;
  }

  FutureOr<bool> _retryPolicy({
    required Exception exception,
    required List<int> retryStatusCodes,
  }) {
    if (exception is! DioError) return false;
    if (exception.type == DioErrorType.cancel) return false;
    final response = exception.response;
    if (response == null) {
      return true;
    }
    if (exception is SocketException || exception is TimeoutException) {
      return true;
    }
    return retryStatusCodes.contains(response.statusCode);
  }

  Future<CommonResponseError<DE>> _processDioError(DioError e) async {
    final responseData = e.response?.data;
    final statusCode = e.response?.statusCode;
    if (e.type == DioErrorType.connectTimeout ||
        e.type == DioErrorType.sendTimeout ||
        statusCode == HttpStatus.networkConnectTimeoutError) {
      return const CommonResponseError.noNetwork();
    }
    if (statusCode == HttpStatus.unauthorized) {
      return const CommonResponseError.unAuthorized();
    }
    if (statusCode == HttpStatus.tooManyRequests) {
      return const CommonResponseError.tooManyRequests();
    }
    if (undefinedErrorCodes.contains(statusCode)) {
      return CommonResponseError.undefinedError(e);
    }

    Object? errorJson;
    if (responseData is String) {
      try {
        errorJson = jsonDecode(responseData);
      } on FormatException catch (e) {
        Logger.log(
            'Received response: \n "$responseData" \n which is not JSON');
        Logger.printException(e);
      }
    } else if (responseData is Map<String, dynamic>) {
      errorJson = responseData;
    }

    if (errorJson is Map<String, dynamic>) {
      try {
        final apiError = await parseJsonApiError(errorJson);
        if (apiError != null) {
          return CommonResponseError.customError(apiError, statusCode);
        }
      } on TypeError catch (e) {
        Logger.log(
            'Error response from server \n $responseData \n does not match ApiError, error:\n$e');
        Logger.printException(e);
      }
    }
    return CommonResponseError.undefinedError(e);
  }
}

class HttpStatus {
  static const int kCodeSuccess200 = 200;
  static const int kCodeSuccess201 = 201;
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;
  static const int unprocessedEntity = 422;
  static const int unsupportedMediaType = 415;
  static const int internalServerError = 500;
  static const int notImplemented = 501;
  static const int badGateway = 502;
  static const int serviceUnavailable = 503;

  static const int networkConnectTimeoutError = 599;
  static const int tooManyRequests = 429;
}
