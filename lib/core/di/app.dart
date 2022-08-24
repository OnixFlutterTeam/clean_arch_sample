import 'package:clean_arch_sample/core/router/app_router.dart';
import 'package:clean_arch_sample/core/router/guards/init_guard.dart';
import 'package:clean_arch_sample/core/router/router_logging_observer.dart';
import 'package:clean_arch_sample/core/router/router_module.dart';
import 'package:clean_arch_sample/domain/repository/startup_repository.dart';
import 'package:get_it/get_it.dart';

void registerApp(GetIt getIt) {
  final routerModule = _RouterModule();

  getIt.registerSingleton<InitGuard>(
      routerModule.initGuard(getIt.get<StartupRepository>()));
  getIt.registerSingleton<AppRouter>(
      routerModule.appRouter(getIt.get<InitGuard>()));
  getIt.registerFactory<RouterLoggingObserver>(
      () => routerModule.routerLoggingObserver(getIt.get<AppRouter>()));
}

AppRouter appRouter() => GetIt.I<AppRouter>();

RouterLoggingObserver routerLoggingObserver() =>
    GetIt.I<RouterLoggingObserver>();

class _RouterModule extends RouterModule {}
