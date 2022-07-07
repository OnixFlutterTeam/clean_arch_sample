import 'package:clean_arch_sample/src/domain/entity/result_error_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../domain/entity/result.dart';
import '../../../../domain/entity/todo_entity.dart';
import '../../../../domain/usecase/get_todos_use_case.dart';
import 'todos_models.dart';

class TodosBloc extends Bloc<TodosScreenEvent, TodosScreenState> {
  final _synchronizeTodosUseCase = GetIt.instance<GetTodosUseCase>();

  final List<TodoEntity> _allTodosList = List.empty(growable: true);

  TodosBloc() : super(TodosScreenState.idle()) {
    on<GetTodosEvent>((event, emit) => _getTodos(event, emit));
    on<SearchEvent>((event, emit) => _onSearch(event, emit));

    add(TodosScreenEvent.getTodos());
  }

  void _getTodos(GetTodosEvent event, Emitter<TodosScreenState> emit) async {
    emit(TodosScreenState.loading());
    Result<List<TodoEntity>> result = await _synchronizeTodosUseCase(
      forceUpdate: event.forceUpdate,
    );
    result.when(
      success: (data) {
        _allTodosList.clear();
        _allTodosList.addAll(data);
        emit(
          TodosScreenState.success(todos: _allTodosList),
        );
      },
      error: (type, message) {
        emit(
          TodosScreenState.error(errorType: type, errorMessage: message),
        );
      },
    );
  }

  void _onSearch(SearchEvent event, Emitter<TodosScreenState> emit) {
    emit(
      TodosScreenState.success(
        todos: _allTodosList
            .where(
              (e) => e.title.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList(),
      ),
    );
  }
}
