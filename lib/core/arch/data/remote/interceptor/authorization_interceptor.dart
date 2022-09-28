import 'package:clean_arch_sample/core/arch/data/remote/base/base_api_client.dart';
import 'package:clean_arch_sample/core/arch/data/remote/base/http_status.dart';
import 'package:clean_arch_sample/core/di/repository.dart';
import 'package:clean_arch_sample/core/di/services.dart';
import 'package:dio/dio.dart';

class AuthorizationInterceptor extends QueuedInterceptorsWrapper {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = tokenRepository().accessToken;
    if (token != null && token.isNotEmpty) {
      options.headers.addAll(
        <String, String>{
          BaseApiClient.kAuthHeader: '${BaseApiClient.kAuthPrefix}$token',
        },
      );
    }
    logger.d('token: $token');
    handler.next(options);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      final refreshToken = tokenRepository().refreshToken;
      if (refreshToken == null || refreshToken.isEmpty) {
        sessionService().closeSession();
        return handler.next(err);
      }
      try {
        final result = await refreshTokenRepository().refresh(refreshToken);
        final res = result.when(
          success: (data) async {
            return await _resolveRequest(err, handler, data);
          },
          error: (failure) {
            sessionService().closeSession();
            return handler.next(err);
          },
        );
        return res;
      } on DioError {
        if (err.response?.statusCode == HttpStatus.unauthorized) {
          sessionService().closeSession();
        }
      }
    }
    handler.next(err);
  }

  Future<void> _resolveRequest(
    DioError err,
    ErrorInterceptorHandler handler,
    AuthenticationEntity authEntity,
  ) async {
    await tokenRepository().update(
      access: authEntity.accessToken,
      refresh: authEntity.refreshToken,
    );
    final requestOptions = err.response?.requestOptions;
    if (requestOptions != null) {
      requestOptions.headers[BaseApiClient.kAuthHeader] =
          '${BaseApiClient.kAuthPrefix}${authEntity.accessToken}';
      final options = Options(
        method: requestOptions.method,
        headers: requestOptions.headers,
      );
      final dioRefresh = Dio(
        BaseOptions(baseUrl: requestOptions.baseUrl),
      );
      final response = await dioRefresh.request<dynamic>(
        requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options,
      );
      return handler.resolve(response);
    }
    logger.e('err: $err');
    return handler.next(err);
  }
}
