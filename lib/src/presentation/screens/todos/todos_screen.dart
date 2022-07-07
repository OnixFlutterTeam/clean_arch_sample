import 'package:clean_arch_sample/src/presentation/screens/todos/bloc/todos_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/colors.dart';
import 'bloc/todos_bloc.dart';
import 'widget/error_view.dart';
import 'widget/no_todos_view.dart';
import 'widget/progress_view.dart';
import 'widget/search_view.dart';
import 'widget/todo_view.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundGrey,
        body: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            SearchView(
              onSearchChanged: (query) {
                context.read<TodosBloc>().add(
                      TodosScreenEvent.onSearch(
                        query: query,
                      ),
                    );
              },
            ),
            Expanded(
              child: BlocBuilder<TodosBloc, TodosScreenState>(
                builder: (context, state) {
                  if (state is TodosScreenStateLoading) {
                    return const ProgressView();
                  }
                  if (state is TodosScreenStateError) {
                    return ErrorView(
                      errorText: state.errorMessage,
                      onRetryPressed: () {
                        context.read<TodosBloc>().add(
                              TodosScreenEvent.getTodos(
                                forceUpdate: true,
                              ),
                            );
                      },
                    );
                  }
                  if (state is TodosScreenStateSuccess) {
                    if (state.todos.isEmpty) {
                      return const NoTodosView();
                    }
                    return ListView.builder(
                      itemCount: state.todos.length,
                      itemBuilder: (context, index) => TodoView(
                        item: state.todos[index],
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
