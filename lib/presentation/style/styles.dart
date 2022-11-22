import 'package:clean_arch_sample/presentation/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static ThemeData appTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.black,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 28.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.darkGrey,
      ),
      headline2: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.darkGrey,
      ),
      headline3: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.darkGrey,
      ),
      button: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
      bodyText1: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.darkGrey,
      ),
      caption: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
    ),
  );
}
