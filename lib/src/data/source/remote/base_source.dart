import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class BaseSource {
  static const _baseUrl = 'https://jsonplaceholder.typicode.com';

  @protected
  final Dio dio = Dio(BaseOptions(baseUrl: _baseUrl));

  @protected
  Future<bool> hasConnection() async {
    try {
      final result =
          await InternetAddress.lookup(_baseUrl.replaceAll('https://', ''));
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
    return false;
  }
}
