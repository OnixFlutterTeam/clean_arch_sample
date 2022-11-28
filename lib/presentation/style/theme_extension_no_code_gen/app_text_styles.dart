import 'package:clean_arch_sample/presentation/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  static final light = AppTextStyles(
    fs28: TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.w700,
      color: ColorPalette.textLight,
    ),
    fs24: TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: ColorPalette.textLight,
    ),
    fs18: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: ColorPalette.textLight,
    ),
    button18: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      color: ColorPalette.textLight,
    ),
    bodyText16: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: ColorPalette.textLight,
    ),
    caption14: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorPalette.textLight,
    ),
  );

  static final dark = AppTextStyles(
    fs28: TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.w600,
      color: ColorPalette.textDark,
    ),
    fs24: TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w500,
      color: ColorPalette.textDark,
    ),
    fs18: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
      color: ColorPalette.textDark,
    ),
    button18: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
      color: ColorPalette.textDark,
    ),
    bodyText16: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: ColorPalette.textDark,
    ),
    caption14: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorPalette.textDark,
    ),
  );

  final TextStyle? fs28;
  final TextStyle? fs24;
  final TextStyle? fs18;
  final TextStyle? button18;
  final TextStyle? bodyText16;
  final TextStyle? caption14;

  const AppTextStyles({
    required this.fs28,
    required this.fs24,
    required this.fs18,
    required this.button18,
    required this.bodyText16,
    required this.caption14,
  });

  @override
  ThemeExtension<AppTextStyles> copyWith({
    TextStyle? fs28,
    TextStyle? fs24,
    TextStyle? fs18,
    TextStyle? button18,
    TextStyle? bodyText16,
    TextStyle? caption14,
  }) {
    return AppTextStyles(
      fs28: fs28 ?? this.fs28,
      fs24: fs24 ?? this.fs24,
      fs18: fs18 ?? this.fs18,
      button18: button18 ?? this.button18,
      bodyText16: bodyText16 ?? this.bodyText16,
      caption14: caption14 ?? this.caption14,
    );
  }

  @override
  ThemeExtension<AppTextStyles> lerp(
    ThemeExtension<AppTextStyles>? other,
    double t,
  ) {
    if (other is! AppTextStyles) {
      return this;
    }
    return AppTextStyles(
      fs28: TextStyle.lerp(fs28, other.fs28, t),
      fs24: TextStyle.lerp(fs24, other.fs24, t),
      fs18: TextStyle.lerp(fs18, other.fs18, t),
      button18: TextStyle.lerp(button18, other.button18, t),
      bodyText16: TextStyle.lerp(bodyText16, other.bodyText16, t),
      caption14: TextStyle.lerp(caption14, other.caption14, t),
    );
  }
}
