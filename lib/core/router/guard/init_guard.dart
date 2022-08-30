import 'package:auto_route/auto_route.dart';
import 'package:clean_arch_sample/core/router/app_router.dart';
import 'package:flutter/material.dart';

typedef IsInited = bool Function();

class InitGuard extends AutoRouteGuard {
  @protected
  final IsInited isInited;

  InitGuard({
    required this.isInited,
  });

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (!isInited()) {
      router.push(const SplashRoute());
    } else {
      resolver.next();
    }
  }
}
