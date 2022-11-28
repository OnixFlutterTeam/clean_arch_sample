import 'package:clean_arch_sample/presentation/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'theme_colors.tailor.dart';

@Tailor(themeGetter: ThemeGetter.onBuildContext)
class _$ThemeColors {
  static List<Color> backgroundColor = [
    AppColors.bgLight,
    AppColors.bgDark,
  ];
  static List<Color> buttonColor = [
    AppColors.greenLight,
    AppColors.greenDark,
  ];
}
