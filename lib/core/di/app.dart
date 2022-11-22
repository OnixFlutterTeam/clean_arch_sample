import 'package:clean_arch_sample/core/router/app_router.dart';
import 'package:clean_arch_sample/core/router/guard/init_guard.dart';
import 'package:clean_arch_sample/core/router/router_logging_observer.dart';
import 'package:clean_arch_sample/core/router/router_module.dart';
import 'package:clean_arch_sample/domain/repository/startup_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

void registerApp(GetIt getIt) {
  final routerModule = _RouterModule();

  getIt
    ..registerSingleton<InitGuard>(
      routerModule.initGuard(getIt.get<StartupRepository>()),
    )
    ..registerSingleton<AppRouter>(
      routerModule.appRouter(getIt.get<InitGuard>()),
    )
    ..registerFactory<RouterLoggingObserver>(
      () => routerModule.routerLoggingObserver(getIt.get<AppRouter>()),
    )
    ..registerSingleton<Logger>(Logger());
}

AppRouter appRouter() => GetIt.I<AppRouter>();

Logger get logger => GetIt.I<Logger>();

RouterLoggingObserver routerLoggingObserver() =>
    GetIt.I<RouterLoggingObserver>();

class _RouterModule extends RouterModule {}
