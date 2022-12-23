import 'package:auto_route/auto_route.dart';
import 'package:clean_arch_sample/core/router/app_router.dart';
import 'package:flutter/material.dart';

typedef IsInitialized = bool Function();

class InitGuard extends AutoRouteGuard {
  @protected
  final IsInitialized _isInitialized;

  InitGuard({
    required IsInitialized isInitialized,
  }) : _isInitialized = isInitialized;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (!_isInitialized()) {
      router.push(const SplashRoute());
    } else {
      resolver.next();
    }
  }
}
