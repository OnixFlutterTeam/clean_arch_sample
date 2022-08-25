import 'dart:async';
import 'dart:io';

import 'package:clean_arch_sample/core/arch/data/remote/error/default_api_error.dart';
import 'package:clean_arch_sample/core/arch/domain/entities/common/data_response.dart';
import 'package:clean_arch_sample/core/arch/logger.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:retry/retry.dart';

///Custom function to provide request Future
typedef OnRequest<T> = Future<T> Function();

///Custom Function to provide response converter (Map to Object)
typedef OnResponse<T> = T Function(Response<dynamic> resposne);

abstract class DioErrorHandler {
  ///Pass 2 required functions:
  ///onRequest - your request Future
  ///onResponse - your response converter, basically call fromJson inside
  ///checkNetworkConnection - set to false if you need get data from cache interceptor
  Future<DataResponse<R>> processRequest<T, R>({
    required OnRequest<T> onRequest,
    required OnResponse<R> onResponse,
    bool checkNetworkConnection = true,
  });
}

class DioErrorHandlerImpl implements DioErrorHandler {
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
  final bool useRetry;

  DioErrorHandlerImpl({
    required this.connectivity,
    required this.internetConnectionChecker,
    this.useRetry = false,
    this.maxAttemptsCount = defaultMaxAttemptsCount,
    this.retryStatusCodes = defaultRetryStatusCodes,
    this.undefinedErrorCodes = defaultUndefinedErrorCodes,
  });

  @override
  Future<DataResponse<R>> processRequest<T, R>({
    required OnRequest<T> onRequest,
    required OnResponse<R> onResponse,
    bool checkNetworkConnection = true,
  }) async {
    final resultConnectivity = await connectivity.checkConnectivity();
    final hasConnection = await internetConnectionChecker.hasConnection;

    if (checkNetworkConnection &&
        (resultConnectivity == ConnectivityResult.none || !hasConnection)) {
      return const DataResponse.notConnected();
    }
    final response = await _call(onRequest);
    try {
      if (_isResponseSuccess(response as Response<dynamic>)) {
        return DataResponse.success(onResponse(response));
      }
      return DataResponse.success(onResponse(response));
    } on DioError catch (e) {
      Logger.printException(e);
      return _processDioError(e);
    } on Exception catch (e, trace) {
      Logger.printException(trace);
      return DataResponse.undefinedError(e);
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

  Future<T> _call<T>(OnRequest<T> request) async {
    if (useRetry) {
      return retry(
        request,
        maxAttempts: maxAttemptsCount,
        retryIf: (exception) => _retryPolicy(
          exception: exception,
          retryStatusCodes: retryStatusCodes,
        ),
      );
    } else {
      return request();
    }
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

  Future<DataResponse<T>> _processDioError<T>(DioError e) async {
    final responseData = e.response?.data;
    final statusCode = e.response?.statusCode;
    if (e.type == DioErrorType.connectTimeout ||
        e.type == DioErrorType.sendTimeout ||
        statusCode == HttpStatus.networkConnectTimeoutError) {
      return const DataResponse.notConnected();
    }
    if (statusCode == HttpStatus.unauthorized) {
      return const DataResponse.unauthorized();
    }
    if (statusCode == HttpStatus.tooManyRequests) {
      return const DataResponse.tooManyRequests();
    }
    if (undefinedErrorCodes.contains(statusCode)) {
      return DataResponse.undefinedError(e);
    }
    final apiError = _asDefaultApiError(responseData);
    if (apiError != null) {
      return DataResponse.apiError(apiError);
    }
    //TODO process other error types and provide results
    //TODO also add new error types to DataResponse if needed

    return DataResponse.undefinedError(e);
  }

  DefaultApiError? _asDefaultApiError(dynamic response) {
    if (response != null) {
      return DefaultApiError.fromJson(response);
    }
    return null;
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
