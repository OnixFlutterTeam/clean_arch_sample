import 'package:clean_arch_sample/src/core/router/router_logging_observer.dart';
import 'package:clean_arch_sample/src/domain/repository/startup_repository.dart';

import 'app_router.dart';
import 'guards/init_guard.dart';

abstract class RouterModule {
  AppRouter appRouter(
    InitGuard initGuard,
  ) {
    return AppRouter(
      init: initGuard,
    );
  }

  InitGuard initGuard(StartupRepository startupRepository) =>
      InitGuard(isInited: startupRepository.isInited);

  RouterLoggingObserver routerLoggingObserver(
    AppRouter appRouter,
  ) {
    return RouterLoggingObserver(
      appRouter: appRouter,
    );
  }
}
