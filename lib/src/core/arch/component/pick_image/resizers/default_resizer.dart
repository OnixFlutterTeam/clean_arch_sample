import 'dart:io';

import 'package:clean_arch_sample/src/core/arch/logger.dart';
import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';

import 'base_resizer.dart';

class _Args {
  _Args(this.file, this.maxSize);

  final File file;
  final int maxSize;
}

img.Image? _resize(_Args args) {
  img.Image? originalImage = img.decodeImage(args.file.readAsBytesSync());
  if (originalImage == null) {
    return null;
  }
  if (originalImage.length <= args.maxSize) {
    Logger.log(
        'originalImage.length: ${originalImage.length} args.maxSize: ${args.maxSize}');
    return originalImage;
  }
  Logger.log(
      'originalImage: w:${originalImage.width}, h:${originalImage.height}');
  var step = 10;
  var targetWidth = originalImage.width.toDouble();
  var targetHeight = originalImage.height.toDouble();
  var aspect = targetWidth / targetHeight;

  do {
    targetWidth -= step;
    targetHeight = targetWidth / aspect;
  } while (targetWidth * targetHeight > args.maxSize);
  Logger.log('resized: w:$targetWidth, h:$targetHeight');
  var resized = img.copyResize(
    originalImage,
    width: targetWidth.toInt(),
    height: targetHeight.toInt(),
  );

  return resized;
}

class DefaultResizer extends BaseResizer {
  // bytes w*h
  DefaultResizer(this.maxSize);

  final String _filePrefix = 'resized_';
  final int maxSize;

  @override
  Future<File?> resize(File? file) async {
    if (file == null || maxSize == 0) {
      return Future.value(file);
    }
    File resultFile;
    try {
      var resized = await compute(_resize, _Args(file, maxSize));
      if (resized == null) {
        return Future.value(file);
      }
      var tempDir = await getTemporaryDirectory();
      var tempPath = tempDir.path;
      var filePath =
          '$tempPath/${_filePrefix}_${DateTime.now().millisecondsSinceEpoch}.jpeg';
      resultFile = File(filePath);
      resultFile.writeAsBytesSync(img.encodeJpg(resized, quality: 90));
      return Future.value(resultFile);
    } catch (e) {
      Logger.printException(e);
      return Future.value(file);
    }
  }
}
