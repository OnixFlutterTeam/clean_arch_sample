import 'package:clean_arch_sample/data/repository/refresh_token_repository_impl.dart';
import 'package:clean_arch_sample/data/repository/startup_repository_impl.dart';
import 'package:clean_arch_sample/data/repository/time_repository_impl.dart';
import 'package:clean_arch_sample/data/repository/todo_repository_impl.dart';
import 'package:clean_arch_sample/data/repository/token_repository_impl.dart';
import 'package:clean_arch_sample/data/source/local/database/todo_database.dart';
import 'package:clean_arch_sample/data/source/local/preferences_source/preferences_source.dart';
import 'package:clean_arch_sample/data/source/remote/time/time_source.dart';
import 'package:clean_arch_sample/data/source/remote/todo/todo_source.dart';
import 'package:clean_arch_sample/domain/repository/refresh_token_repository.dart';
import 'package:clean_arch_sample/domain/repository/startup_repository.dart';
import 'package:clean_arch_sample/domain/repository/time_repository.dart';
import 'package:clean_arch_sample/domain/repository/todo_repository.dart';
import 'package:clean_arch_sample/domain/repository/token_repository.dart';
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
    )
    ..registerSingleton<TimeRepository>(
      TimeRepositoryImpl(getIt<TimeSource>()),
    )
    ..registerSingleton<TokenRepository>(
      TokenRepositoryImpl(),
    )
    ..registerSingleton<RefreshTokenRepository>(
      RefreshTokenRepositoryImpl(),
    );
}

TokenRepository tokenRepository() => GetIt.I.get<TokenRepository>();

RefreshTokenRepository refreshTokenRepository() =>
    GetIt.I.get<RefreshTokenRepository>();
