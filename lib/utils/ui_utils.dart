import 'package:flutter/widgets.dart';

class UiUtil {
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static Size screenSize(BuildContext context) => MediaQuery.of(context).size;

  static double statusBarHeight(BuildContext context) =>
      MediaQuery.of(context).padding.top;
}
