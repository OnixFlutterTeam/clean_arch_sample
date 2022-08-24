import 'package:dio/dio.dart';

abstract class BaseApiClient {
  static const String kMediaJPEG = 'image/jpeg';
  static const String kMediaPNG = 'image/png';

  late Dio client;

  void attachInterceptors();

  void deAttachInterceptors();

  void attachLoggerInterceptor();
}
