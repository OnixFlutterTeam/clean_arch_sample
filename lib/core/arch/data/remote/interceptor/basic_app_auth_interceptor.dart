import 'dart:io';

import 'package:clean_arch_sample/core/di/app.dart';
import 'package:dio/dio.dart';

class BasicAppAuthInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.d('AppInterceptor onRequest');
    //TODO add accessToken
    // var accessToken = 'some token';
    // options.headers[BaseApiClient.kAuthHeader] = '${BaseApiClient.kAuthPrefix}$accessToken';
    // options.headers[BaseApiClient.kAcceptHeader] = BaseApiClient.kJsonPrefix;
    // options.headers[BaseApiClient.kContentTypeHeader] = BaseApiClient.kJsonPrefix;
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
