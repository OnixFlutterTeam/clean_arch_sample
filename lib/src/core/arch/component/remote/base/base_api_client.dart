import 'package:dio/dio.dart';

abstract class BaseApiClient {
  static final String kBaseUrl =
      'https://jsonplaceholder.typicode.com'; // TODO APP BASE URL; with flavor: FlavorConfig.I.baseUrl;

  static const int kConnectTimeout = 30000;

  static const String kMediaJPEG = 'image/jpeg';
  static const String kMediaPNG = 'image/png';

  late Dio client;

  void attachInterceptors();

  void deAttachInterceptors();

  void attachLoggerInterceptor();
}
