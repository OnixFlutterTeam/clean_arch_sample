import 'package:dio/dio.dart';

abstract class BaseApiClient {
  static const String kAcceptHeader = 'Accept';
  static const String kContentTypeHeader = 'Content-Type';
  static const String kJsonPrefix = 'application/json';
  static const String kMultipartPrefix = 'multipart/form-data';
  static const String kMediaJPEG = 'image/jpeg';
  static const String kMediaPNG = 'image/png';

  late Dio client;

  void attachInterceptors();

  void deAttachInterceptors();

  void attachLoggerInterceptor();
}
