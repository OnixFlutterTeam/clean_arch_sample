import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_entity.freezed.dart';

@freezed
class TodoEntity with _$TodoEntity {
  const factory TodoEntity({
    required int userId,
    required int id,
    required String title,
    required bool completed,
  }) = _TodoEntity;
}
