import 'package:clean_arch_sample/core/arch/data/remote/base/base_api_client.dart';
import 'package:clean_arch_sample/core/arch/data/remote/base/flutter_transformer.dart';
import 'package:clean_arch_sample/core/arch/data/remote/interceptor/basic_app_auth_interceptor.dart';
import 'package:clean_arch_sample/core/arch/data/remote/interceptor/cache_interceptor.dart';
import 'package:clean_arch_sample/core/di/app.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient implements BaseApiClient {
  static const defaultConnectTimeout = 30000;
  static const defaultReceiveTimeout = 30000;

  late BasicAppAuthInterceptor customInterceptor;
  late CacheInterceptor cacheInterceptor;

  @override
  late Dio client;

  CacheOptions? get cacheOptions => cacheInterceptor.cacheOptions;

  ApiClient({required BaseOptions options}) {
    client = Dio(options);
    customInterceptor = BasicAppAuthInterceptor();
    cacheInterceptor = CacheInterceptor(client);
    client.transformer = FlutterTransformer();
    attachLoggerInterceptor();
  }

  @override
  void attachLoggerInterceptor() {
    if (kDebugMode) {
      client.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
          compact: false,
        ),
      );
    }
  }

  @override
  void attachInterceptors() {
    client.interceptors.remove(customInterceptor);
    client.interceptors.add(customInterceptor);
    _attachCacheInterceptor();
  }

  @override
  void deAttachInterceptors() {
    client.interceptors.remove(customInterceptor);
    clearCache();
  }

  void attachCharlesProxy(String? charlesIp, String? port) {
    if (charlesIp == null || port == null) return;

    (client.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.findProxy = (uri) => 'PROXY $charlesIp:$port';
      //ignore: cascade_invocations
      client.badCertificateCallback = (cert, host, port) => true;
      return client;
    };
    logger.d('CharlesProxyEnabled');
  }

  CachePolicy getCachePolicy({required bool forceRefresh}) =>
      cacheInterceptor.getCachePolicy(forceRefresh: forceRefresh);

  Future<void> clearCache() async {
    logger.d('clearCache');
    await cacheInterceptor.clearCache();
    await _attachCacheInterceptor();
  }

  Future<void> _attachCacheInterceptor() async {
    logger.d('attachCacheInterceptor');
    await cacheInterceptor.attachCacheInterceptor();
  }
}
