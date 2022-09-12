import 'package:clean_arch_sample/core/arch/data/remote/api_client.dart';
import 'package:clean_arch_sample/core/arch/data/remote/dio_const.dart';
import 'package:clean_arch_sample/core/arch/data/remote/dio_request_processor/dio_request_processor.dart';
import 'package:clean_arch_sample/data/source/remote/time/time_source.dart';
import 'package:clean_arch_sample/data/source/remote/time/time_source_impl.dart';
import 'package:clean_arch_sample/data/source/remote/todo/todo_source.dart';
import 'package:clean_arch_sample/data/source/remote/todo/todo_source_impl.dart';
import 'package:get_it/get_it.dart';

void registerSources(GetIt getIt) {
  getIt
    ..registerSingleton<TodoSource>(TodoSourceImpl(
      getIt.get<ApiClient>(instanceName: DioConst.jsonPlaceholderInstance),
      getIt.get<DioRequestProcessor>(),
    ))
    ..registerSingleton<TimeSource>(TimeSourceImpl(
      getIt.get<ApiClient>(instanceName: DioConst.timeApiInstance),
      getIt.get<DioRequestProcessor>(),
    ));
}
