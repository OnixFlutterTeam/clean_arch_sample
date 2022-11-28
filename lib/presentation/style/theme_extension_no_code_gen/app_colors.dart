import 'package:clean_arch_sample/presentation/style/colors.dart';
import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  static const light = AppColors(
    backgroundColor: ColorPalette.bgLight,
    buttonColor: ColorPalette.greenLight,
  );

  static const dark = AppColors(
    backgroundColor: ColorPalette.bgDark,
    buttonColor: ColorPalette.greenDark,
  );

  final Color? backgroundColor;
  final Color? buttonColor;

  const AppColors({
    required this.backgroundColor,
    required this.buttonColor,
  });

  @override
  ThemeExtension<AppColors> copyWith({
    Color? backgroundColor,
    Color? buttonColor,
  }) {
    return AppColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      buttonColor: buttonColor ?? this.buttonColor,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      buttonColor: Color.lerp(buttonColor, other.buttonColor, t),
    );
  }
}
