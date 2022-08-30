import 'dart:async';
import 'dart:io';

import 'package:clean_arch_sample/core/app/localization/common_app_localization_ext.dart';
import 'package:clean_arch_sample/core/arch/logger.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

import 'compress/base_compress.dart';
import 'cropper/base_cropper.dart';
import 'resizer/base_resizer.dart';

class AppImagePicker {
  SourceModel? _sourceModel;
  CameraDevice? _preferredCamera;
  BaseCropper? _imageCropper;
  BaseResizer? _imageResizer;
  BaseCompress? _imageCompress;
  bool _showGallery = false;
  bool _onlyPhoto = false;

  AppImagePicker withImageSource(SourceModel source) {
    _sourceModel = source;
    return this;
  }

  AppImagePicker withOnlyPhoto() {
    _onlyPhoto = true;
    return this;
  }

  AppImagePicker withPreferredCamera(CameraDevice preferredCamera) {
    _preferredCamera = preferredCamera;
    return this;
  }

  AppImagePicker withImageCropper(BaseCropper cropper) {
    _imageCropper = cropper;
    return this;
  }

  AppImagePicker withImageResizer(BaseResizer resizer) {
    _imageResizer = resizer;
    return this;
  }

  AppImagePicker withImageCompress(BaseCompress compress) {
    _imageCompress = compress;
    return this;
  }

  AppImagePicker withGallery() {
    _showGallery = true;
    return this;
  }

  Future<FileModel?> pick(BuildContext context) async {
    FocusScope.of(context).unfocus();
    final completer = Completer<FileModel?>();
    var sourceModel = _sourceModel;
    sourceModel ??= await _onSelectSource(context);
    if (sourceModel == null) {
      completer.complete(Future.value(null));
    } else {
      try {
        File? file;
        FileType fileType;
        switch (sourceModel.sourceType) {
          case SourceType.imageGallery:
            file = await _workWithImage(context, sourceModel.imageSource, file);
            fileType = FileType.image;
            break;
          case SourceType.videoGallery:
            file = await _getVideo(context, sourceModel.imageSource);
            fileType = FileType.video;
            break;
          case SourceType.imageCamera:
            file = await _workWithImage(context, sourceModel.imageSource, file);
            fileType = FileType.image;
            break;
          case SourceType.videoCamera:
            file = await _getVideo(context, sourceModel.imageSource);
            fileType = FileType.video;
            break;
        }
        completer
            .complete(Future.value(FileModel(file: file, fileType: fileType)));
      } catch (e) {
        Logger.printException(e);
        completer.complete(Future.value(null));
      }
    }
    return completer.future;
  }

  Future<File?> _getImage(BuildContext context, ImageSource source) async {
    FocusScope.of(context).unfocus();
    try {
      var pickedFile = await ImagePicker().pickImage(
        source: source,
        preferredCameraDevice: _preferredCamera ?? CameraDevice.front,
        imageQuality: 100,
      );
      if (pickedFile == null || pickedFile.path.isEmpty) {
        return Future.value(null);
      }
      var image = File(pickedFile.path);
      return Future.value(image);
    } catch (e) {
      Logger.printException(e);
      return Future.value(null);
    }
  }

  Future<File?> _getVideo(BuildContext context, ImageSource source) async {
    FocusScope.of(context).unfocus();
    try {
      var pickedFile = await ImagePicker().pickVideo(
        source: source,
        preferredCameraDevice: _preferredCamera ?? CameraDevice.front,
        maxDuration: const Duration(minutes: 30),
      );
      if (pickedFile == null || pickedFile.path.isEmpty) {
        return Future.value(null);
      }
      var image = File(pickedFile.path);
      return Future.value(image);
    } catch (e) {
      Logger.printException(e);
      return Future.value(null);
    }
  }

  Future<SourceModel?> _onSelectSource(BuildContext context) async {
    return await showCupertinoModalPopup<SourceModel>(
      context: context,
      useRootNavigator: true,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: Text(context.str.imageSource),
        actions: <Widget>[
          _showGallery
              ? CupertinoActionSheetAction(
                  child: Text(context.str.imageSourceImageGalleryBtn),
                  onPressed: () => Navigator.pop(
                    context,
                    SourceModel(
                      imageSource: ImageSource.gallery,
                      sourceType: SourceType.imageGallery,
                    ),
                  ),
                )
              : const SizedBox(),
          CupertinoActionSheetAction(
            child: Text(context.str.imageSourceImageCameraBtn),
            onPressed: () => Navigator.pop(
              context,
              SourceModel(
                imageSource: ImageSource.camera,
                sourceType: SourceType.imageCamera,
              ),
            ),
          ),
          _showGallery
              ? _onlyPhoto
                  ? const SizedBox()
                  : CupertinoActionSheetAction(
                      child: Text(context.str.imageSourceVideoGalleryBtn),
                      onPressed: () => Navigator.pop(
                        context,
                        SourceModel(
                          imageSource: ImageSource.gallery,
                          sourceType: SourceType.videoGallery,
                        ),
                      ),
                    )
              : const SizedBox(),
          _onlyPhoto
              ? const SizedBox()
              : CupertinoActionSheetAction(
                  child: Text(context.str.imageSourceVideoCameraBtn),
                  onPressed: () => Navigator.pop(
                    context,
                    SourceModel(
                      imageSource: ImageSource.camera,
                      sourceType: SourceType.videoCamera,
                    ),
                  ),
                ),
        ],
        cancelButton: CupertinoActionSheetAction(
          isDefaultAction: true,
          onPressed: () => Navigator.pop(context, null),
          child: Text(context.str.imageSourceCancelBtn),
        ),
      ),
    );
  }

  Future<File?> _workWithImage(
    BuildContext context,
    ImageSource imageSource,
    File? file,
  ) async {
    file = await _getImage(context, imageSource);
    if (_imageCropper != null) {
      file = await _imageCropper?.crop(context, file);
    }
    if (_imageResizer != null) {
      file = await _imageResizer?.resize(file);
    }
    if (_imageCompress != null) {
      file = await _imageCompress?.compress(file);
    }
    return file;
  }
}

class SourceModel {
  SourceModel({
    required this.imageSource,
    required this.sourceType,
  });

  ImageSource imageSource;
  SourceType sourceType;
}

class FileModel {
  FileModel({
    required this.file,
    required this.fileType,
  });

  File? file;
  FileType fileType;

  @override
  String toString() {
    return 'FileModel{file: $file, fileType: $fileType}';
  }
}

enum SourceType { imageGallery, videoGallery, imageCamera, videoCamera }

enum FileType { image, video }
