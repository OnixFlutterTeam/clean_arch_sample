import 'dart:io';

abstract class BaseCompress {
  Future<File?> compress(File? file);
}
