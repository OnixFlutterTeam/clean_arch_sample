import 'dart:io';

abstract class BaseResizer {
  Future<File?> resize(File? file);
}
