import 'dart:async';
import 'dart:io';

import 'package:clean_arch_sample/core/arch/data/remote/base/http_status.dart';
import 'package:clean_arch_sample/core/arch/data/remote/dio_request_processor/dio_request_processor.dart';
import 'package:clean_arch_sample/core/arch/data/remote/error/default_api_error.dart';
import 'package:clean_arch_sample/core/arch/domain/entity/common/data_response.dart';
import 'package:clean_arch_sample/core/di/app.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:retry/retry.dart';

class DioRequestProcessorImpl implements DioRequestProcessor {
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

  DioRequestProcessorImpl({
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
    } on DioError catch (e, trace) {
      logger.e('onDioError', e, trace);
      return _processDioError(e);
    } on Exception catch (e, trace) {
      logger.e('onDioCommonError', e, trace);
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
    // TODO: process other error types and provide results
    // TODO: also add new error types to DataResponse if needed

    return DataResponse.undefinedError(e);
  }

  DefaultApiError? _asDefaultApiError(response) {
    if (response != null) {
      return DefaultApiError.fromJson(response);
    }
    return null;
  }
}
