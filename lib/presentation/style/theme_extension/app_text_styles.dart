import 'package:clean_arch_sample/presentation/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_text_styles.tailor.dart';

@tailor
class _$AppTextStyles {
  static List<TextStyle> fs28 = [
    TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.w700,
      color: ColorPalette.textLight,
    ),
    TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.w600,
      color: ColorPalette.textDark,
    ),
  ];

  static List<TextStyle> fs24 = [
    TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: ColorPalette.textLight,
    ),
    TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w500,
      color: ColorPalette.textDark,
    ),
  ];

  static List<TextStyle> fs18 = [
    TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: ColorPalette.textLight,
    ),
    TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
      color: ColorPalette.textDark,
    ),
  ];

  static List<TextStyle> button18 = [
    TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      color: ColorPalette.textLight,
    ),
    TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
      color: ColorPalette.textDark,
    ),
  ];

  static List<TextStyle> bodyText16 = [
    TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: ColorPalette.textLight,
    ),
    TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: ColorPalette.textDark,
    ),
  ];

  static List<TextStyle> caption14 = [
    TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorPalette.textLight,
    ),
    TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorPalette.textDark,
    ),
  ];
}
