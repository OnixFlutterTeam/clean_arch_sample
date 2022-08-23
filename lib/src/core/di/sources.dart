import 'package:clean_arch_sample/src/core/arch/component/remote/api_client.dart';
import 'package:clean_arch_sample/src/core/arch/component/remote/dio_error_handler/dio_error_handler.dart';
import 'package:clean_arch_sample/src/core/arch/data/remote/error/default_api_error.dart';
import 'package:clean_arch_sample/src/data/source/remote/impl/todo_source_impl.dart';
import 'package:clean_arch_sample/src/data/source/remote/todo_source.dart';
import 'package:get_it/get_it.dart';

void registerSources(GetIt getIt) {
  getIt.registerSingleton<TodoSource>(TodoSourceImpl(
    getIt.get<ApiClient>(),
    getIt.get<DioErrorHandler<DefaultApiError>>(),
  ));
}
