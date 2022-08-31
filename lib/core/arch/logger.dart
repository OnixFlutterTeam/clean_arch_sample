import 'dart:io';

import 'package:flutter/foundation.dart';

class Logger {
  static bool _isEnabled = kDebugMode;
  static String _globalTag = '[__LOG__]';

  static void log(String message) {
    if (_isEnabled) {
      _printWrapped(
        '$_globalTag $message [${DateTime.now()}]',
        color: PrintColor.green,
      );
    }
  }

  static void logW(String message) {
    if (_isEnabled) {
      _printWrapped('$_globalTag $message [${DateTime.now()}]',
          color: PrintColor.yellow);
    }
  }

  static void logE(String message) {
    if (_isEnabled) {
      _printWrapped('$_globalTag $message [${DateTime.now()}]',
          color: PrintColor.red);
    }
  }

  static void logD(String message) {
    if (_isEnabled) {
      _printWrapped('$_globalTag $message [${DateTime.now()}]');
    }
  }

  static void logTag(dynamic objectTag, String message) {
    if (_isEnabled) {
      _printWrapped('[${objectTag.toString()}] $message [${DateTime.now()}]');
    }
  }

  static void setEnable(bool isEnable) {
    _isEnabled = isEnable;
  }

  static void setGlobalTag(String globalTag) {
    _globalTag = globalTag;
  }

  static void printException(dynamic e) {
    if (_isEnabled) {
      print(_printColored(e, color: PrintColor.red));
    }
  }

  static void _printWrapped(
    String text, {
    PrintColor color = PrintColor.none,
  }) {
    final pattern = RegExp('.{1,800}');
    pattern.allMatches(text).forEach(
          (match) => print(
            _printColored(
              match.group(0),
              color: color,
            ),
          ),
        );
  }

  static dynamic _printColored(
    dynamic text, {
    PrintColor color = PrintColor.none,
  }) {
    if (Platform.isIOS) {
      return text;
    }
    switch (color) {
      case PrintColor.black:
        return "\x1B[30m$text\x1B[0m";
      case PrintColor.red:
        return "\x1B[31m$text\x1B[0m";
      case PrintColor.green:
        return "\x1B[32m$text\x1B[0m";
      case PrintColor.yellow:
        return "\x1B[33m$text\x1B[0m";
      case PrintColor.blue:
        return "\x1B[34m$text\x1B[0m";
      case PrintColor.magenta:
        return "\x1B[35m$text\x1B[0m";
      case PrintColor.cyan:
        return "\x1B[36m$text\x1B[0m";
      case PrintColor.white:
        return "\x1B[37m$text\x1B[0m";
      case PrintColor.none:
        return text;
    }
  }
}

enum PrintColor {
  black,
  red,
  green,
  yellow,
  blue,
  magenta,
  cyan,
  white,
  none,
}
