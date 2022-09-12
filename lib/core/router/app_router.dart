import 'package:auto_route/auto_route.dart';
import 'package:clean_arch_sample/core/router/guard/init_guard.dart';
import 'package:clean_arch_sample/presentation/screen/splash/splash_screen.dart';
import 'package:clean_arch_sample/presentation/screen/todos/todos_screen.dart';
import 'package:flutter/material.dart';

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
  final InitGuard init;

  AppRouter({
    required this.init,
  }) : super();
}
