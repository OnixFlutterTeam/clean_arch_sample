import 'package:clean_arch_sample/core/arch/data/remote/base/base_api_client.dart';
import 'package:clean_arch_sample/core/arch/data/remote/base/http_status.dart';
import 'package:clean_arch_sample/core/di/app.dart';
import 'package:clean_arch_sample/core/di/repository.dart';
import 'package:clean_arch_sample/core/di/services.dart';
import 'package:clean_arch_sample/core/extension/logger_extension.dart';
import 'package:clean_arch_sample/data/mapper/auth/auth_mapper.dart';
import 'package:clean_arch_sample/data/model/remote/auth/auth_response.dart';
import 'package:clean_arch_sample/data/model/remote/token/token_request.dart';
import 'package:clean_arch_sample/domain/entity/auth/auth_entity.dart';
import 'package:dio/dio.dart';

class AuthorizationInterceptor extends QueuedInterceptorsWrapper {
  late Dio _refreshDio;

  AuthorizationInterceptor() {
    _refreshDio = Dio();
  }

  //TODO change refresh path
  final _refreshPath = 'auth/refresh';

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
      final accessToken = tokenRepository().accessToken;
      try {
        if (refreshToken == null ||
            refreshToken.isEmpty ||
            accessToken == null ||
            accessToken.isEmpty) {
          await sessionService().closeSession();
          return handler.next(err);
        }
        final request = TokenRequest(
          accessToken: accessToken,
          refreshToken: refreshToken,
        );
        final authEntity = await _refresh(err, request);
        return await _resolveRequest(err, handler, authEntity);
      } on DioError {
        if (err.response?.statusCode == HttpStatus.unauthorized) {
          await sessionService().closeSession();
        }
      } catch (e, stackTrace) {
        logger.crash(error: e, stackTrace: stackTrace);
        await sessionService().closeSession();
      }
    }
    handler.next(err);
  }

  Future<AuthenticationEntity> _refresh(
    DioError err,
    TokenRequest request,
  ) async {
    logger.d('_refresh start');
    final result = await _refreshDio.post(
      '${err.requestOptions.baseUrl}$_refreshPath',
      options: Options(
        headers: {
          BaseApiClient.kAcceptHeader: BaseApiClient.kJsonPrefix,
          BaseApiClient.kContentTypeHeader: BaseApiClient.kJsonPrefix,
          BaseApiClient.kAuthHeader:
              '${BaseApiClient.kAuthPrefix}${request.accessToken}',
        },
      ),
      data: request.toJson(),
    );
    final data = AuthResponse.fromJson(result.data['data']);
    logger.d('_refresh end');
    return AuthMapper().mapRefreshEntity(data);
  }

  Future<void> _resolveRequest(
    DioError err,
    ErrorInterceptorHandler handler,
    AuthenticationEntity authEntity,
  ) async {
    await tokenRepository().update(
      AuthenticationEntity(
        accessToken: authEntity.accessToken,
        refreshToken: authEntity.refreshToken,
      ),
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
