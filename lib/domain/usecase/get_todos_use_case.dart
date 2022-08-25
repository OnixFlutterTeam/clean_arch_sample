import 'package:clean_arch_sample/core/arch/domain/entities/common/result.dart';
import 'package:clean_arch_sample/domain/entity/todo/todo_entity.dart';
import 'package:clean_arch_sample/domain/repository/todo_repository.dart';

class GetTodosUseCase {
  final TodoRepository _todoRepository;

  GetTodosUseCase(this._todoRepository);

  Future<Result<List<TodoEntity>>> call({
    bool forceUpdate = false,
  }) async =>
      await _todoRepository.getTodos(forceUpdate: forceUpdate);
}
