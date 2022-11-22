import 'package:clean_arch_sample/presentation/screen/todos/bloc/todos_bloc_imports.dart';
import 'package:clean_arch_sample/presentation/screen/todos/widget/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ErrorView(
      onRetryPressed: () {
        context.read<TodosBloc>().add(
              TodosScreenEvent.getTodos(forceUpdate: true),
            );
      },
    );
  }
}
