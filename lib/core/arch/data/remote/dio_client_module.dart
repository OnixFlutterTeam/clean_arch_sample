
import 'package:clean_arch_sample/core/arch/data/remote/dio_request_processor/dio_request_processor.dart';
import 'package:clean_arch_sample/core/arch/data/remote/dio_request_processor/dio_request_processor_impl.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'api_client.dart';

abstract class DioClientModule {
  ApiClient makeApiClient(String baseUrl) => ApiClient(
        options: BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: ApiClient.defaultConnectTimeout,
          receiveTimeout: ApiClient.defaultReceiveTimeout,
        ),
      );

  DioRequestProcessor makeDioErrorHandler() => DioRequestProcessorImpl(
        connectivity: Connectivity(),
        internetConnectionChecker: InternetConnectionChecker(),
      );
}
