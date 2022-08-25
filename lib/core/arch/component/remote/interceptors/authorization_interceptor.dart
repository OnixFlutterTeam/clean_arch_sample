import 'package:clean_arch_sample/core/arch/component/remote/dio_error_handler/dio_error_handler.dart';
import 'package:clean_arch_sample/domain/repository/refresh_token_repository.dart';
import 'package:clean_arch_sample/domain/repository/token_repository.dart';
import 'package:dio/dio.dart';

class AuthorizationInterceptor extends QueuedInterceptorsWrapper {
  final TokenRepository _tokenRepository;
  final RefreshTokenRepository _refreshTokenRepository;

  AuthorizationInterceptor({
    required TokenRepository tokenRepository,
    required RefreshTokenRepository refreshTokenRepository,
  })  : _tokenRepository = tokenRepository,
        _refreshTokenRepository = refreshTokenRepository;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final String? token = _tokenRepository.accessToken;
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
      final refreshToken = _tokenRepository.refreshToken;
      if (refreshToken == null || refreshToken.isEmpty) {
        _tokenRepository.clear();
        //TODO reauthorize();
        return handler.next(err);
      }
      try {
        final result = await _refreshTokenRepository.refresh(refreshToken);

        final res = await result.when(
          left: (left) async {
            _tokenRepository.clear();
            //TODO reauthorize();
            return handler.next(err);
          },
          right: (right) async {
            await _tokenRepository.update(
              access: right.accessToken,
              refresh: right.refreshToken,
            );
            final RequestOptions requestOptions = err.response!.requestOptions;
            requestOptions.headers['Authorization'] =
                'Bearer ${right.accessToken}';
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
          },
        );
        return res;
      } on DioError {
        if (err.response?.statusCode == HttpStatus.unauthorized) {
          await _tokenRepository.clear();
          //TODO reauthorize();
        }
      }
    }
    handler.next(err);
  }
}
