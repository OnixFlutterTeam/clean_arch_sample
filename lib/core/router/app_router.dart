import 'package:auto_route/auto_route.dart';
import 'package:clean_arch_sample/presentation/screens/splash/splash_screen.dart';
import 'package:clean_arch_sample/presentation/screens/todos/todos_screen.dart';
import 'package:flutter/material.dart';

import 'guard/init_guard.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true, path: '/'),
    AdaptiveRoute(
      page: TodosScreen,
      path: '/todoScreen',
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({
    required this.init,
  }) : super();

  final InitGuard init;
}
