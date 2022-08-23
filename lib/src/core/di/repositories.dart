import 'package:clean_arch_sample/src/data/repository/startup_repository_impl.dart';
import 'package:clean_arch_sample/src/data/repository/todo_repository_impl.dart';
import 'package:clean_arch_sample/src/data/source/local/database/todo_database.dart';
import 'package:clean_arch_sample/src/data/source/local/preferences_source/preferences_source.dart';
import 'package:clean_arch_sample/src/data/source/remote/todo_source.dart';
import 'package:clean_arch_sample/src/domain/repository/startup_repository.dart';
import 'package:clean_arch_sample/src/domain/repository/todo_repository.dart';
import 'package:get_it/get_it.dart';

void registerRepositories(GetIt getIt) {
  getIt
    ..registerLazySingleton<StartupRepository>(() => StartupRepositoryImpl())
    ..registerSingleton<TodoRepository>(
      TodoRepositoryImpl(
        getIt<TodoSource>(),
        getIt<TodoDatabase>(),
        getIt<PreferencesSource>(),
      ),
    );
}
