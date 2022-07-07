import 'package:clean_arch_sample/src/domain/entity/result_error_type.dart';
import 'package:clean_arch_sample/src/domain/entity/todo_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todos_models.freezed.dart';

@freezed
class TodosScreenEvent with _$TodosScreenEvent {
  factory TodosScreenEvent.getTodos({
    @Default(false) bool forceUpdate,
  }) = GetTodosEvent;

  factory TodosScreenEvent.onSearch({required String query}) = SearchEvent;
}

@freezed
class TodosScreenState with _$TodosScreenState {
  const TodosScreenState._();

  factory TodosScreenState.idle() = TodosScreenStateIdle;

  factory TodosScreenState.loading() = TodosScreenStateLoading;

  factory TodosScreenState.error({
    @Default(ResultErrorType.none) ResultErrorType errorType,
    @Default('') String errorMessage,
  }) = TodosScreenStateError;

  factory TodosScreenState.success({
    @Default([]) List<TodoEntity> todos,
  }) = TodosScreenStateSuccess;

  bool get success => this is TodosScreenStateSuccess;
}
