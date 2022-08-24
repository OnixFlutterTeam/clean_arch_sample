import 'dart:io';

import 'package:flutter/widgets.dart';

abstract class BaseCropper {
  Future<File?> crop(BuildContext context, File? file);
}
