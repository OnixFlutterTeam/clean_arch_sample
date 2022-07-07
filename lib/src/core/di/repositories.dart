import 'package:clean_arch_sample/src/data/source/local/database/todo_database.dart';
import 'package:clean_arch_sample/src/data/source/local/preferences_source.dart';
import 'package:get_it/get_it.dart';

import '../../data/repository/todo_repository_impl.dart';
import '../../data/source/remote/todo_source.dart';
import '../../domain/repository/todo_repository.dart';

void registerRepositories(GetIt getIt) {
  getIt.registerSingleton<TodoRepository>(
    TodoRepositoryImpl(
      getIt<TodoSource>(),
      getIt<TodoDatabase>(),
      getIt<PreferencesSource>(),
    ),
  );
}
