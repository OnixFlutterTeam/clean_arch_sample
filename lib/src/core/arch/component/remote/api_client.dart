import 'dart:io';

import 'package:clean_arch_sample/src/core/arch/logger.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'app_auth_interceptor.dart';
import 'base/base_api_client.dart';
import 'base/flutter_transformer.dart';
import 'cache_interceptor.dart';

class ApiClient implements BaseApiClient {
  ApiClient() {
    var options = BaseOptions(
      baseUrl: BaseApiClient.kBaseUrl,
      connectTimeout: BaseApiClient.kConnectTimeout,
    );
    client = Dio(options);
    customInterceptor = AppAuthInterceptor(client);
    cacheInterceptor = CacheInterceptor(client);
    client.transformer = FlutterTransformer();
    attachLoggerInterceptor();
  }

  late AppAuthInterceptor customInterceptor;
  late CacheInterceptor cacheInterceptor;

  CacheOptions? get cacheOptions => cacheInterceptor.cacheOptions;

  @override
  late Dio client;

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
      client.findProxy = (uri) => "PROXY $charlesIp:$port";
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
    };
    Logger.log('CharlesProxyEnabled');
  }

  CachePolicy getCachePolicy(bool forceRefresh) =>
      cacheInterceptor.getCachePolicy(forceRefresh);

  Future<void> clearCache() async {
    Logger.log('clearCache');
    await cacheInterceptor.clearCache();
    _attachCacheInterceptor();
  }

  Future<void> _attachCacheInterceptor() async {
    Logger.log('attachCacheInterceptor');
    cacheInterceptor.attachCacheInterceptor();
  }
}
