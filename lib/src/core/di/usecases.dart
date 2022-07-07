import 'package:get_it/get_it.dart';

import '../../domain/repository/todo_repository.dart';
import '../../domain/usecase/get_todos_use_case.dart';

void registerUseCases(GetIt getIt) {
  getIt.registerSingleton<GetTodosUseCase>(
    GetTodosUseCase(
      getIt<TodoRepository>(),
    ),
  );
}
