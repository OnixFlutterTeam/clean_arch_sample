import 'package:clean_arch_sample/presentation/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_colors.tailor.dart';

@tailor
class _$AppColors {
  static List<Color> backgroundColor = [
    ColorPalette.bgLight,
    ColorPalette.bgDark,
  ];
  static List<Color> buttonColor = [
    ColorPalette.greenLight,
    ColorPalette.greenDark,
  ];
}
