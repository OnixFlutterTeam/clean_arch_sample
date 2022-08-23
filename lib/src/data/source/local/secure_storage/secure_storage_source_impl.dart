import 'package:clean_arch_sample/src/core/arch/logger.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'secure_storage_source.dart';

class SecureStorageSourceImpl implements SecureStorageSource {
  SecureStorageSourceImpl() {
    _secureStorage = const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
    );
  }

  FlutterSecureStorage? _secureStorage;

  @override
  Future<void> clear() async {
    await _secureStorage?.deleteAll();
  }

  @override
  Future<void> delete(String key) async {
    try {
      await _secureStorage?.delete(key: key);
    } catch (e) {
      Logger.printException(e);
    }
  }

  @override
  Future<String> read(String key) async {
    try {
      return await _secureStorage?.read(key: key) ?? '';
    } catch (e) {
      Logger.printException(e);
      return '';
    }
  }

  @override
  Future<void> write(String key, String value) async {
    try {
      await _secureStorage?.write(key: key, value: value);
    } catch (e) {
      Logger.printException(e);
    }
  }

  @override
  Future<bool> containsKey(String key) async {
    try {
      final exist = await _secureStorage?.containsKey(key: key);
      if (exist != null) {
        return exist;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
