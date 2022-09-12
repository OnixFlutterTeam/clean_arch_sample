import 'package:clean_arch_sample/core/arch/domain/entity/common/result.dart';
import 'package:clean_arch_sample/domain/entity/todo/todo_entity.dart';
import 'package:clean_arch_sample/domain/repository/todo_repository.dart';

class GetTodosUseCase {
  final TodoRepository _todoRepository;

  GetTodosUseCase(this._todoRepository);

  Future<Result<List<TodoEntity>>> call({
    bool forceUpdate = false,
  }) async =>
      _todoRepository.getTodos(forceUpdate: forceUpdate);
}
