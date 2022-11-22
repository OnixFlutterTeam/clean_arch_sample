import 'package:clean_arch_sample/core/di/app.dart';
import 'package:clean_arch_sample/core/di/local.dart';
import 'package:clean_arch_sample/data/source/local/secure_storage/secure_storage_keys.dart';
import 'package:clean_arch_sample/domain/service/cipher_service.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:path_provider/path_provider.dart' as pp;

class CacheInterceptor {
  final Dio client;

  CacheOptions? cacheOptions;
  HiveCacheStore? _cacheStore;

  CacheInterceptor(this.client);

  Future<void> attachCacheInterceptor() async {
    try {
      final options = await createOptions();
      final interceptor = DioCacheInterceptor(options: options);

      client.interceptors.add(interceptor);
      cacheOptions = options;

      (client.httpClientAdapter as DefaultHttpClientAdapter)
          .onHttpClientCreate = (client) {
        client.badCertificateCallback = (cert, host, port) => true;
        return client;
      };
      logger.d('DioCacheInterceptor ADDED');
    } catch (e, trace) {
      logger.e('DioCacheInterceptor Error', e, trace);
    }
  }

  Future<CacheOptions> createOptions() async {
    final cipherService = CipherService(secureStorageSource());
    await cipherService.init();

    final dir = await pp.getApplicationDocumentsDirectory();
    _cacheStore = HiveCacheStore(dir.path);

    return CacheOptions(
      store: _cacheStore,
      policy: CachePolicy.noCache,
      cipher: CacheCipher(
        decrypt: cipherService.decrypt,
        encrypt: cipherService.encrypt,
      ),
      hitCacheOnErrorExcept: [],
      maxStale: const Duration(days: 1),
      priority: CachePriority.normal,
      keyBuilder: CacheOptions.defaultCacheKeyBuilder,
      allowPostMethod: true,
    );
  }

  CachePolicy getCachePolicy({required bool forceRefresh}) {
    return forceRefresh
        ? CachePolicy.refreshForceCache
        : CachePolicy.forceCache;
  }

  Future<void> clearCache() async {
    await secureStorageSource().delete(SecureStorageKeys.kSecretKeyCipher);
    await _cacheStore?.clean();
  }
}
