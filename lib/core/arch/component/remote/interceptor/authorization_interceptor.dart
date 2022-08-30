import 'package:clean_arch_sample/core/arch/component/remote/dio_error_handler/dio_error_handler.dart';
import 'package:clean_arch_sample/core/di/repository.dart';
import 'package:dio/dio.dart';

class AuthorizationInterceptor extends QueuedInterceptorsWrapper {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final String? token = tokenRepository().accessToken;
    if (token != null && token.isNotEmpty) {
      options.headers.addAll(
        <String, String>{
          'Authorization': 'Bearer $token',
        },
      );
    }
    handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final refreshToken = tokenRepository().refreshToken;
      if (refreshToken == null || refreshToken.isEmpty) {
        tokenRepository().clear();
        //TODO reauthorize();
        return handler.next(err);
      }
      try {
        final result = await refreshTokenRepository().refresh(refreshToken);
        final res = result.when(success: (data) async {
          await tokenRepository().update(
            access: data.accessToken,
            refresh: data.refreshToken,
          );
          final RequestOptions requestOptions = err.response!.requestOptions;
          requestOptions.headers['Authorization'] =
              'Bearer ${data.accessToken}';
          final options = Options(
            method: requestOptions.method,
            headers: requestOptions.headers,
          );
          final Dio dioRefresh = Dio(
            BaseOptions(
              baseUrl: requestOptions.baseUrl,
              headers: <String, String>{
                'accept': 'application/json',
              },
            ),
          );
          final response = await dioRefresh.request<dynamic>(
            requestOptions.path,
            data: requestOptions.data,
            queryParameters: requestOptions.queryParameters,
            options: options,
          );
          return handler.resolve(response);
        }, error: (failure) {
          tokenRepository().clear();
          //TODO reauthorize();
          return handler.next(err);
        });

        return res;
      } on DioError {
        if (err.response?.statusCode == HttpStatus.unauthorized) {
          await tokenRepository().clear();
          //TODO reauthorize();
        }
      }
    }
    handler.next(err);
  }
}
