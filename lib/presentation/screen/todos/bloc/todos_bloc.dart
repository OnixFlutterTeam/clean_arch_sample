import 'dart:async';

import 'package:clean_arch_sample/core/arch/bloc/base_bloc.dart';
import 'package:clean_arch_sample/domain/entity/todo/todo_entity.dart';
import 'package:clean_arch_sample/domain/usecase/get_time_use_case.dart';
import 'package:clean_arch_sample/domain/usecase/get_todos_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'todos_models.dart';

class TodosBloc extends BaseBloc<TodosScreenEvent, TodosScreenState, TodosSR> {
  final GetTodosUseCase _synchronizeTodosUseCase;
  final GetTimeUseCase _getTimeUseCase;
  final _allTodosList = List<TodoEntity>.empty(growable: true);

  TodosBloc(this._synchronizeTodosUseCase, this._getTimeUseCase)
      : super(const TodosScreenState.empty()) {
    on<GetTodosEvent>(_getTodos);
    on<SearchEvent>(_onSearch);
    on<GetTimeEvent>(_onGetTime);
    add(TodosScreenEvent.getTodos());
  }

  void _getTodos(GetTodosEvent event, Emitter<TodosScreenState> emit) async {
    emit(const TodosScreenState.loading());
    final result =
        await _synchronizeTodosUseCase(forceUpdate: event.forceUpdate);
    result.when(
      success: (data) {
        _allTodosList.clear();
        _allTodosList.addAll(data);
        emit(TodosScreenState.data(todos: _allTodosList));
      },
      error: (error) {
        onFailure(error);
        emit(const TodosScreenState.empty());
      },
    );
  }

  void _onSearch(SearchEvent event, Emitter<TodosScreenState> emit) {
    emit(state.data.copyWith(
        todos: _allTodosList
            .where((e) =>
                e.title.toLowerCase().contains(event.query.toLowerCase()))
            .toList()));
  }

  FutureOr<void> _onGetTime(
    GetTimeEvent event,
    Emitter<TodosScreenState> emit,
  ) async {
    showProgress();
    final result = await _getTimeUseCase();
    await hideProgress();

    result.when(
      success: (data) {
        addSr(TodosSR.getTime(
            'Time in UTC: ${data.currentDateTime.toIso8601String()}'));
      },
      error: (error) {
        onFailure(error);
      },
    );
  }
}
