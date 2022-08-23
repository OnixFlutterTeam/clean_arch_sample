import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:clean_arch_sample/src/core/arch/bloc/base_block_state.dart';
import 'package:clean_arch_sample/src/core/arch/component/remote/base/map_common_server_error.dart';
import 'package:clean_arch_sample/src/core/arch/domain/entities/failure/api_failure.dart';
import 'package:clean_arch_sample/src/core/arch/widget/common/misk.dart';
import 'package:clean_arch_sample/src/presentation/screens/todos/bloc/todos_models.dart';
import 'package:clean_arch_sample/src/presentation/screens/todos/widget/error_view.dart';
import 'package:clean_arch_sample/src/presentation/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc/todos_bloc.dart';
import 'widget/no_todos_view.dart';
import 'widget/search_view.dart';
import 'widget/todo_view.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({Key? key}) : super(key: key);

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState
    extends BaseState<TodosScreenState, TodosBloc, TodosSR, TodosScreen> {
  @override
  void onBlocCreated(BuildContext context, TodosBloc bloc) {
    super.onBlocCreated(context, bloc);
    bloc.failureStream.listen((failure) async {
      if (failure is ApiFailure) {
        await showOkAlertDialog(
          context: context,
          message: MapCommonServerError.getApiFailureMessage(context, failure),
        );
      }
    });
  }

  @override
  Widget buildWidget(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundGrey,
        body: stateObserver(
          context,
          (state) => _buildMainState(context, state),
        ),
      ),
    );
  }

  Widget _buildMainState(BuildContext context, TodosScreenState state) {
    return state.map(
      loading: (state) => const _LoadingState(),
      empty: (state) => const _EmptyState(),
      data: (state) => _buildMainContent(context, state),
    );
  }

  Widget _buildMainContent(BuildContext context, TodosScreenStateData state) {
    return Column(
      children: [
        Delimiter.height(10.h),
        SearchView(
          onSearchChanged: (query) {
            context
                .read<TodosBloc>()
                .add(TodosScreenEvent.onSearch(query: query));
          },
        ),
        Expanded(
          child: state.todos.isEmpty
              ? const NoTodosView()
              : ListView.builder(
                  itemCount: state.todos.length,
                  itemBuilder: (context, index) => TodoView(
                    item: state.todos[index],
                  ),
                ),
        ),
      ],
    );
  }
}

class _LoadingState extends StatelessWidget {
  const _LoadingState({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ErrorView(
      onRetryPressed: () {
        context.read<TodosBloc>().add(
              TodosScreenEvent.getTodos(
                forceUpdate: true,
              ),
            );
      },
    );
  }
}
