import 'package:clean_arch_sample/presentation/style/theme_extension_no_code_gen/app_colors.dart';
import 'package:clean_arch_sample/presentation/style/theme_extension_no_code_gen/app_text_styles.dart';
import 'package:flutter/material.dart';

extension ThemeFromContextExtension on BuildContext {
  AppColors get appColors => Theme.of(this).extension<AppColors>()!;

  AppTextStyles get appTextStyles => Theme.of(this).extension<AppTextStyles>()!;
}
