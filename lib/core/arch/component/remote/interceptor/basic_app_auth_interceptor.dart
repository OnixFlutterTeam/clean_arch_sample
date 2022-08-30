import 'package:clean_arch_sample/core/arch/component/remote/dio_error_handler/dio_error_handler.dart';
import 'package:clean_arch_sample/core/arch/logger.dart';
import 'package:dio/dio.dart';

class BasicAppAuthInterceptor extends InterceptorsWrapper {
  static const String kAuthHeader = 'Authorization';
  static const String kAuthPrefix = 'Bearer ';
  static const String kAcceptHeader = 'Accept';
  static const String kContentTypeHeader = 'Content-Type';
  static const String kJsonPrefix = 'application/json';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Logger.log('AppInterceptor onRequest');
    //TODO add accessToken
    // var accessToken = 'some token';
    // options.headers[kAuthHeader] = '$kAuthPrefix$accessToken';
    // options.headers[kAcceptHeader] = kJsonPrefix;
    // options.headers[kContentTypeHeader] = kJsonPrefix;
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    Logger.log('AppInterceptor start: ${err.toString()}');
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      //TODO disposeSessionLocal
      return;
    }
    super.onError(err, handler);
  }
}
