import 'package:clean_arch_sample/src/domain/repository/startup_repository.dart';
import 'package:clean_arch_sample/src/domain/usecase/get_time_use_case.dart';
import 'package:clean_arch_sample/src/domain/usecase/get_todos_use_case.dart';
import 'package:clean_arch_sample/src/presentation/screens/splash/bloc/splash_bloc_imports.dart';
import 'package:clean_arch_sample/src/presentation/screens/todos/bloc/todos_bloc.dart';
import 'package:get_it/get_it.dart';

void registerBloc(GetIt getIt) {
  getIt.registerFactory<SplashBloc>(
      () => SplashBloc(getIt.get<StartupRepository>()));
  getIt.registerFactory<TodosBloc>(() => TodosBloc(
        getIt.get<GetTodosUseCase>(),
        getIt.get<GetTimeUseCase>(),
      ));
}
