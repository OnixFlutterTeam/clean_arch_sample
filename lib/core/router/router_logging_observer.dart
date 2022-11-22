import 'package:auto_route/auto_route.dart';
import 'package:clean_arch_sample/core/di/app.dart';
import 'package:clean_arch_sample/core/router/app_router.dart';
import 'package:flutter/material.dart';

class RouterLoggingObserver extends AutoRouterObserver {
  final AppRouter appRouter;

  RouterLoggingObserver({
    required this.appRouter,
  });

  @override
  void didPush(Route route, Route? previousRoute) {
    logger.w(
      'ROUTING New route pushed: ${route.settings.name}, stack${_stack()}',
    );
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    logger.w('ROUTING Route poped: ${route.settings.name}, stack${_stack()}');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    logger.w('ROUTING Route removed: ${route.settings.name}, stack${_stack()}');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    logger.w(
      'ROUTING Route replaced to: ${newRoute?.settings.name} from: ${oldRoute?.settings.name}, stack${_stack()}',
    );
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    logger.w('ROUTING Tab route visited: ${route.name}, stack${_stack()}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    logger.w('ROUTING Tab route re-visited: ${route.name}, stack${_stack()}');
  }

  String _stack() => appRouter.stack.map((it) => it.name).toString();
}
