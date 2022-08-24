import 'package:clean_arch_sample/src/domain/entity/todo/todo_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todos_models.freezed.dart';

@freezed
class TodosScreenEvent with _$TodosScreenEvent {
  factory TodosScreenEvent.getTodos({
    @Default(false) bool forceUpdate,
  }) = GetTodosEvent;

  factory TodosScreenEvent.onSearch({required String query}) = SearchEvent;

  factory TodosScreenEvent.getTime() = GetTimeEvent;
}

@freezed
class TodosScreenState with _$TodosScreenState {
  TodosScreenStateData get data => this as TodosScreenStateData;

  const TodosScreenState._();

  const factory TodosScreenState.loading() = TodosScreenStateLoading;

  const factory TodosScreenState.empty() = TodosScreenStateEmpty;

  const factory TodosScreenState.data({
    @Default([]) List<TodoEntity> todos,
  }) = TodosScreenStateData;
}

@freezed
class TodosSR with _$TodosSR {
  factory TodosSR.getTime(String time) = _GetTimeSR;
}
