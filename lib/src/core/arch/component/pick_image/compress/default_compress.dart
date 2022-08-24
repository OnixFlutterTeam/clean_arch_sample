import 'dart:io';
import 'dart:math';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';

import 'base_compress.dart';

class DefaultCompress extends BaseCompress {
  @override
  Future<File?> compress(File? file, {int quality = 90}) async {
    if (file == null) {
      return null;
    }
    var tempDir = await getTemporaryDirectory();
    var tempPath = tempDir.path;
    var targetPath =
        '$tempPath/resized__${DateTime.now().millisecondsSinceEpoch}.jpeg';

    final result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      targetPath,
      quality: quality,
    );

    return result;
  }

  Future<String> _getFileSize(File file, int decimals) async {
    int bytes = await file.length();
    if (bytes <= 0) return "0 B";
    const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
    var i = (log(bytes) / log(1024)).floor();
    return '${(bytes / pow(1024, i)).toStringAsFixed(decimals)} ${suffixes[i]}';
  }
}
