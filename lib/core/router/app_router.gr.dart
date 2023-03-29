// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    TodosRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TodosScreen(),
      );
    }
  };
}

/// generated route for
/// [TodosScreen]
class TodosRoute extends PageRouteInfo<void> {
  const TodosRoute({List<PageRouteInfo>? children})
      : super(
          TodosRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodosRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
