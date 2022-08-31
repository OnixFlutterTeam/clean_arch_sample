import 'package:clean_arch_sample/core/arch/data/remote/api_client.dart';
import 'package:clean_arch_sample/core/arch/data/remote/dio_client_module.dart';
import 'package:clean_arch_sample/core/arch/data/remote/dio_const.dart';
import 'package:clean_arch_sample/core/arch/data/remote/dio_request_processor/dio_request_processor.dart';
import 'package:get_it/get_it.dart';

void registerRemote(GetIt getIt) {
  final dioClientModule = _DioClientModule();

  getIt.registerLazySingleton<DioRequestProcessor>(
      () => dioClientModule.makeDioErrorHandler());
  getIt.registerLazySingleton<ApiClient>(
    //TODO APP BASE URL we can change with with flavor: FlavorConfig.I.baseUrl;
    () => dioClientModule.makeApiClient(DioConst.jsonPlaceholderBaseUrl),
    instanceName: DioConst.jsonPlaceholderInstance,
  );
  getIt.registerLazySingleton<ApiClient>(
    () => dioClientModule.makeApiClient(DioConst.timeApiBaseUrl),
    instanceName: DioConst.timeApiInstance,
  );
}

ApiClient apiClientJsonPlaceholder() =>
    GetIt.I.get<ApiClient>(instanceName: DioConst.jsonPlaceholderInstance);

class _DioClientModule extends DioClientModule {}
