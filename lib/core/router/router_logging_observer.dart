import 'package:auto_route/auto_route.dart';
import 'package:clean_arch_sample/core/arch/logger.dart';
import 'package:flutter/material.dart';

import 'app_router.dart';

class RouterLoggingObserver extends AutoRouterObserver {
  final AppRouter appRouter;

  RouterLoggingObserver({
    required this.appRouter,
  });

  @override
  void didPush(Route route, Route? previousRoute) {
    Logger.logW(
        'ROUTING New route pushed: ${route.settings.name}, stack${_stack()}');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    Logger.logW(
        'ROUTING Route poped: ${route.settings.name}, stack${_stack()}');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    Logger.logW(
        'ROUTING Route removed: ${route.settings.name}, stack${_stack()}');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    Logger.logW(
        'ROUTING Route replaced to: ${newRoute?.settings.name} from: ${oldRoute?.settings.name}, stack${_stack()}');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    Logger.logW('ROUTING Tab route visited: ${route.name}, stack${_stack()}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    Logger.logW(
        'ROUTING Tab route re-visited: ${route.name}, stack${_stack()}');
  }

  String _stack() => appRouter.stack.map((it) => it.name).toString();
}
