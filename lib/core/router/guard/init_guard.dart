import 'package:auto_route/auto_route.dart';


typedef IsInitialized = bool Function();

class InitGuard extends AutoRouteGuard {
  InitGuard();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    resolver.next();
  }
}
