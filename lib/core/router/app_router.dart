import 'package:auto_route/auto_route.dart';
import 'package:clean_arch_sample/core/router/guard/init_guard.dart';
import 'package:clean_arch_sample/presentation/screen/todos/todos_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  final InitGuard init;



  @override
  final List<AutoRoute> routes = [
    AdaptiveRoute(
      page: TodosRoute.page,
      path: '/',
    ),
  ];


  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  AppRouter({
    required this.init,
  }) : super();



}
