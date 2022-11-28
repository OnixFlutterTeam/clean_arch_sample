import 'package:clean_arch_sample/presentation/style/theme/theme_extension_no_code_gen/app_colors.dart';
import 'package:clean_arch_sample/presentation/style/theme/theme_extension_no_code_gen/app_text_styles.dart';
import 'package:flutter/material.dart';

extension ThemeFromContextExtension on BuildContext {
  ThemeColors get appColors => Theme.of(this).extension<ThemeColors>()!;

  ThemeTextStyles get appTextStyles =>
      Theme.of(this).extension<ThemeTextStyles>()!;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}
