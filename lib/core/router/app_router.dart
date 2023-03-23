import 'package:auto_route/auto_route.dart';
import 'package:clean_arch_sample/core/router/guard/init_guard.dart';
import 'package:clean_arch_sample/presentation/screen/splash/splash_screen.dart';
import 'package:clean_arch_sample/presentation/screen/todos/todos_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, path: '/'),
    AdaptiveRoute(
      page: TodosRoute.page,
      path: '/todoScreen',
    ),
  ];

  final InitGuard init;

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  AppRouter({
    required this.init,
  }) : super();
}
