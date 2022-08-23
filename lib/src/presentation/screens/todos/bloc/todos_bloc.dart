import 'package:clean_arch_sample/src/core/arch/bloc/base_bloc.dart';
import 'package:clean_arch_sample/src/domain/entity/todo_entity.dart';
import 'package:clean_arch_sample/src/domain/usecase/get_todos_use_case.dart';
import 'package:clean_arch_sample/src/domain/usecase/todo_use_case_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'todos_models.dart';

class TodosBloc extends BaseBloc<TodosScreenEvent, TodosScreenState, TodosSR> {
  final GetTodosUseCase _synchronizeTodosUseCase;
  final _allTodosList = List<TodoEntity>.empty(growable: true);

  TodosBloc(this._synchronizeTodosUseCase)
      : super(const TodosScreenState.empty()) {
    on<GetTodosEvent>((event, emit) => _getTodos(event, emit));
    on<SearchEvent>((event, emit) => _onSearch(event, emit));
    add(TodosScreenEvent.getTodos());
  }

  void _getTodos(GetTodosEvent event, Emitter<TodosScreenState> emit) async {
    emit(const TodosScreenState.loading());
    final result = await _synchronizeTodosUseCase(
      param: GetTodoUseCaseParams(forceUpdate: event.forceUpdate),
    );
    result.when(
      left: (left) {
        onFailure(left);
        emit(const TodosScreenState.empty());
      },
      right: (right) {
        _allTodosList.clear();
        _allTodosList.addAll(right);
        emit(TodosScreenState.data(todos: _allTodosList));
      },
    );
  }

  void _onSearch(SearchEvent event, Emitter<TodosScreenState> emit) {
    emit(state.data.copyWith(
        todos: _allTodosList
            .where(
              (e) => e.title.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList()));
  }
}
