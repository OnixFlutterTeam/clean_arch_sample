import 'package:clean_arch_sample/domain/repository/time_repository.dart';
import 'package:clean_arch_sample/domain/repository/todo_repository.dart';
import 'package:clean_arch_sample/domain/usecase/get_time_use_case.dart';
import 'package:clean_arch_sample/domain/usecase/get_todos_use_case.dart';
import 'package:get_it/get_it.dart';

void registerUseCases(GetIt getIt) {
  getIt
    ..registerSingleton<GetTodosUseCase>(
      GetTodosUseCase(getIt<TodoRepository>()),
    )
    ..registerSingleton<GetTimeUseCase>(
      GetTimeUseCase(getIt<TimeRepository>()),
    );
}
