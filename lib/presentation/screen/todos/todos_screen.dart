import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:clean_arch_sample/core/arch/bloc/base_block_state.dart';
import 'package:clean_arch_sample/core/arch/data/remote/base/map_common_server_error.dart';
import 'package:clean_arch_sample/core/arch/domain/entity/failure/api_failure.dart';
import 'package:clean_arch_sample/core/arch/widget/common/misk.dart';
import 'package:clean_arch_sample/core/arch/widget/common/toast.dart';
import 'package:clean_arch_sample/core/di/app.dart';
import 'package:clean_arch_sample/presentation/screen/todos/bloc/todos_bloc.dart';
import 'package:clean_arch_sample/presentation/screen/todos/bloc/todos_models.dart';
import 'package:clean_arch_sample/presentation/screen/todos/widget/empty_state.dart';
import 'package:clean_arch_sample/presentation/screen/todos/widget/loading_state.dart';
import 'package:clean_arch_sample/presentation/screen/todos/widget/no_todos_view.dart';
import 'package:clean_arch_sample/presentation/screen/todos/widget/todo_screen_content.dart';
import 'package:clean_arch_sample/presentation/screen/todos/widget/todo_view.dart';
import 'package:clean_arch_sample/presentation/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          onSR: _onSr,
        ),
      ),
    );
  }

  void _onSr(BuildContext _, TodosSR singleResult) {
    singleResult.when(
      getTime: (time) {
        logger.d('time: $time');
        CustomToast.showToast(time);
      },
    );
  }

  Widget _buildMainState(BuildContext context, TodosScreenState state) {
    return state.map(
      loading: (state) => const LoadingState(),
      empty: (state) => const EmptyState(),
      data: (state) => _buildMainContent(context, state),
    );
  }

  Widget _buildMainContent(BuildContext _, TodosScreenStateData state) {
    return Column(
      children: [
        Delimiter.height(10.h),
        const TodoScreenContent(),
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