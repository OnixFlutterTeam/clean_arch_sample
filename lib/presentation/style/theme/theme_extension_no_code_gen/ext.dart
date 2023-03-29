import 'package:clean_arch_sample/presentation/style/theme/theme_extension_no_code_gen/app_colors.dart';
import 'package:clean_arch_sample/presentation/style/theme/theme_extension_no_code_gen/app_text_styles.dart';
import 'package:flutter/material.dart';

extension ThemeFromContextExtension on BuildContext {
  // ignore: avoid-non-null-assertion
  ThemeColors get appColors => Theme.of(this).extension<ThemeColors>()!;

  ThemeTextStyles get appTextStyles =>
      // ignore: avoid-non-null-assertion
      Theme.of(this).extension<ThemeTextStyles>()!;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  ThemeMode getThemeToSwitch({
    required ThemeMode currentTheme,
  }) {
    var themeModeNew = ThemeMode.system;
    switch (currentTheme) {
      case ThemeMode.system:
        {
          if (isDarkMode) {
            themeModeNew = ThemeMode.light;
            break;
          }
          themeModeNew = ThemeMode.dark;
          break;
        }
      case ThemeMode.light:
        {
          themeModeNew = ThemeMode.dark;
          break;
        }
      case ThemeMode.dark:
        {
          themeModeNew = ThemeMode.light;
          break;
        }
    }
    return themeModeNew;
  }
}
