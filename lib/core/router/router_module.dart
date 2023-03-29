import 'package:clean_arch_sample/core/router/app_router.dart';
import 'package:clean_arch_sample/core/router/guard/init_guard.dart';
import 'package:clean_arch_sample/core/router/router_logging_observer.dart';

abstract class RouterModule {
  AppRouter appRouter() {
    return AppRouter( init: InitGuard());
  }

  RouterLoggingObserver routerLoggingObserver(
    AppRouter appRouter,
  ) {
    return RouterLoggingObserver(
      appRouter: appRouter,
    );
  }
}
