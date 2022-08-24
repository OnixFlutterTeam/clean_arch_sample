import 'dart:io';

import 'package:clean_arch_sample/core/arch/logger.dart';
import 'package:clean_arch_sample/internal/localization/common_app_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';

import 'base_cropper.dart';

class FreeCropper extends BaseCropper {
  FreeCropper({
    this.cropStyle,
    this.aspectRatio,
  });

  final CropStyle? cropStyle;
  final CropAspectRatio? aspectRatio;

  @override
  Future<File?> crop(BuildContext context, File? file) async {
    try {
      if (file == null) {
        return Future.value(file);
      }
      var croppedFile = await ImageCropper().cropImage(
          sourcePath: file.path,
          cropStyle: cropStyle ?? CropStyle.circle,
          aspectRatio: aspectRatio,
          aspectRatioPresets: const [
            CropAspectRatioPreset.square,
          ],
          uiSettings: [
            AndroidUiSettings(
              toolbarTitle: str(context).commonImageEditor,
              toolbarColor: Theme.of(context).primaryColor,
              toolbarWidgetColor: Theme.of(context).backgroundColor,
              activeControlsWidgetColor: Theme.of(context).primaryColor,
              initAspectRatio: CropAspectRatioPreset.square,
            ),
            IOSUiSettings(
              title: str(context).commonImageEditor,
              aspectRatioPickerButtonHidden: false,
              resetAspectRatioEnabled: false,
              aspectRatioLockDimensionSwapEnabled: false,
              aspectRatioLockEnabled: false,
              rotateClockwiseButtonHidden: false,
            ),
          ]);
      if (croppedFile != null) {
        return Future.value(File(croppedFile.path));
      }
      return Future.value(file);
    } catch (e) {
      Logger.printException(e);
      return Future.value(file);
    }
  }
}
