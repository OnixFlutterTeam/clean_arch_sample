import 'dart:io';

import 'package:clean_arch_sample/core/di/app.dart';
import 'package:dio/dio.dart';

class BasicAppAuthInterceptor extends InterceptorsWrapper {
  static const String kAuthHeader = 'Authorization';
  static const String kAuthPrefix = 'Bearer ';
  static const String kAcceptHeader = 'Accept';
  static const String kContentTypeHeader = 'Content-Type';
  static const String kJsonPrefix = 'application/json';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.d('AppInterceptor onRequest');
    //TODO add accessToken
    // var accessToken = 'some token';
    // options.headers[kAuthHeader] = '$kAuthPrefix$accessToken';
    // options.headers[kAcceptHeader] = kJsonPrefix;
    // options.headers[kContentTypeHeader] = kJsonPrefix;
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    logger.d('AppInterceptor start: ${err.toString()}');
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      //TODO disposeSessionLocal
      return;
    }
    super.onError(err, handler);
  }
}
