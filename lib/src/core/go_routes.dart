import 'package:clean_arch_sample/src/presentation/screens/todos/bloc/todos_bloc.dart';
import 'package:clean_arch_sample/src/presentation/screens/todos/todos_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class GoRoutes {
  static late GoRouter router;

  static final GoRoutes _instance = GoRoutes._privateConstructor();

  static const _routeTodos = '/todos';

  static get todosListScreen => _routeTodos;

  GoRoutes._privateConstructor() {
    _initialize();
  }

  factory GoRoutes.initialize() {
    return _instance;
  }

  void _initialize({String initialLocation = _routeTodos}) {
    router = GoRouter(
      initialLocation: initialLocation,
      routes: <GoRoute>[
        GoRoute(
          path: _routeTodos,
          builder: (BuildContext context, GoRouterState state) => BlocProvider(
            create: (context) => TodosBloc(),
            child: TodosScreen(),
          ),
        ),
      ],
    );
  }
}
