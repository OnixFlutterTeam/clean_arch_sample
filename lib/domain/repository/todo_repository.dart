import 'package:clean_arch_sample/core/arch/domain/entity/common/result.dart';
import 'package:clean_arch_sample/domain/entity/todo/todo_entity.dart';

abstract class TodoRepository {
  Future<Result<List<TodoEntity>>> getTodos({
    bool forceUpdate = false,
  });
}
