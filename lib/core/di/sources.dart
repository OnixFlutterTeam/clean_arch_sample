import 'package:clean_arch_sample/core/arch/component/remote/api_client.dart';
import 'package:clean_arch_sample/core/arch/component/remote/dio_const.dart';
import 'package:clean_arch_sample/core/arch/component/remote/dio_error_handler/dio_error_handler.dart';
import 'package:clean_arch_sample/core/arch/data/remote/error/default_api_error.dart';
import 'package:clean_arch_sample/data/source/remote/time/time_source.dart';
import 'package:clean_arch_sample/data/source/remote/time/time_source_impl.dart';
import 'package:clean_arch_sample/data/source/remote/todo/todo_source.dart';
import 'package:clean_arch_sample/data/source/remote/todo/todo_source_impl.dart';
import 'package:get_it/get_it.dart';

void registerSources(GetIt getIt) {
  getIt.registerSingleton<TodoSource>(TodoSourceImpl(
    getIt.get<ApiClient>(instanceName: DioConst.jsonPlaceholderInstance),
    getIt.get<DioErrorHandler<DefaultApiError>>(),
  ));
  getIt.registerSingleton<TimeSource>(TimeSourceImpl(
    getIt.get<ApiClient>(instanceName: DioConst.timeApiInstance),
    getIt.get<DioErrorHandler<DefaultApiError>>(),
  ));
}
