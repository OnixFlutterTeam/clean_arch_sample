import 'package:clean_arch_sample/app/bloc/app_bloc_imports.dart';
import 'package:clean_arch_sample/domain/repository/startup_repository.dart';
import 'package:clean_arch_sample/domain/usecase/get_time_use_case.dart';
import 'package:clean_arch_sample/domain/usecase/get_todos_use_case.dart';
import 'package:clean_arch_sample/presentation/screen/splash/bloc/splash_bloc_imports.dart';
import 'package:clean_arch_sample/presentation/screen/todos/bloc/todos_bloc.dart';
import 'package:get_it/get_it.dart';

void registerBloc(GetIt getIt) {
  getIt
    ..registerFactory<AppBloc>(AppBloc.new)
    ..registerFactory<SplashBloc>(
      () => SplashBloc(getIt.get<StartupRepository>()),
    )
    ..registerFactory<TodosBloc>(() => TodosBloc(
          getIt.get<GetTodosUseCase>(),
          getIt.get<GetTimeUseCase>(),
        ));
}
