import 'package:clean_arch_sample/src/core/arch/component/remote/api_client.dart';
import 'package:clean_arch_sample/src/core/arch/component/remote/dio_client_module.dart';
import 'package:clean_arch_sample/src/core/arch/component/remote/dio_const.dart';
import 'package:clean_arch_sample/src/core/arch/component/remote/dio_error_handler/dio_error_handler.dart';
import 'package:clean_arch_sample/src/core/arch/data/remote/error/default_api_error.dart';
import 'package:get_it/get_it.dart';

void registerRemote(GetIt getIt) {
  final dioClientModule = _DioClientModule();

  getIt.registerLazySingleton<DioErrorHandler<DefaultApiError>>(
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

ApiClient apiClient() => GetIt.I.get<ApiClient>();

class _DioClientModule extends DioClientModule {}
