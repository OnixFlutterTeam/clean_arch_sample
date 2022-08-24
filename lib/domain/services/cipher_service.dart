import 'dart:typed_data';

import 'package:clean_arch_sample/core/arch/logger.dart';
import 'package:clean_arch_sample/data/source/local/secure_storage/secure_storage_keys.dart';
import 'package:clean_arch_sample/data/source/local/secure_storage/secure_storage_source.dart';
import 'package:encrypt/encrypt.dart';

class CipherService {
  CipherService(this._storage) {
    _iv = IV.fromLength(16);
  }

  final SecureStorageSource _storage;

  late IV _iv;
  late Encrypter _encrypter;

  Future<void> init() async {
    final skKeyHEX = await _storage.read(SecureStorageKeys.kSecretKeyCipher);
    final Key key;

    if (skKeyHEX.isNotEmpty) {
      key = await _getKey(skKeyHEX);
    } else {
      key = await _generateNewKey();
    }
    _encrypter = Encrypter(AES(key));
  }

  Future<List<int>> encrypt(List<int> bytes) async {
    try {
      final encrypted = _encrypter.encryptBytes(bytes, iv: _iv);
      return encrypted.bytes.toList();
    } catch (e) {
      Logger.printException(e);
      return [];
    }
  }

  Future<List<int>> decrypt(List<int> bytes) async {
    try {
      final decrypted = _encrypter
          .decryptBytes(Encrypted(Uint8List.fromList(bytes)), iv: _iv);
      return decrypted;
    } catch (e) {
      Logger.printException(e);
      return [];
    }
  }

  List<int> _fromHex(String s) {
    s = s.replaceAll(' ', '').replaceAll('\n', '');
    return List<int>.generate(s.length ~/ 2, (i) {
      var byteInHex = s.substring(2 * i, 2 * i + 2);
      if (byteInHex.startsWith('0')) {
        byteInHex = byteInHex.substring(1);
      }
      final result = int.tryParse(byteInHex, radix: 16);
      if (result == null) {
        throw StateError('Not valid hexadecimal bytes: $s');
      }
      return result;
    });
  }

  String _toHex(List<int> bytes) {
    return bytes.map((e) => e.toRadixString(16).padLeft(2, '0')).join(' ');
  }

  Future<Key> _generateNewKey() async {
    final secretKey = Key.fromSecureRandom(16);
    final bytes = secretKey.bytes.toList();
    final secretKeyHEX = _toHex(bytes);
    await _storage.write(SecureStorageKeys.kSecretKeyCipher, secretKeyHEX);
    return Key(Uint8List.fromList(bytes));
  }

  Future<Key> _getKey(String skKeyHEX) async {
    final bytes = _fromHex(skKeyHEX);
    return Key(Uint8List.fromList(bytes));
  }
}
