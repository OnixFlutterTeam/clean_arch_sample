import 'package:clean_arch_sample/src/core/arch/domain/entities/common/either.dart';
import 'package:clean_arch_sample/src/core/arch/domain/entities/failure/failure.dart';
import 'package:clean_arch_sample/src/core/arch/domain/usecase/async_use_case.dart';
import 'package:clean_arch_sample/src/core/arch/domain/usecase/use_case.dart';
import 'package:clean_arch_sample/src/core/arch/logger.dart';
import 'package:clean_arch_sample/src/domain/entity/todo/todo_entity.dart';
import 'package:clean_arch_sample/src/domain/repository/todo_repository.dart';

import 'todo_use_case_params.dart';

class GetTodosUseCase extends AsyncUseCase<List<TodoEntity>> {
  final TodoRepository _todoRepository;

  GetTodosUseCase(this._todoRepository);

  @override
  Future<Either<Failure, List<TodoEntity>>> execute(
      {UseCaseParams? param}) async {
    var forceUpdate = false;

    try {
      if (param != null) {
        param as GetTodoUseCaseParams;
        forceUpdate = param.forceUpdate;
      }
    } catch (e) {
      Logger.printException(e);
    }
    return await _todoRepository.getTodos(forceUpdate: forceUpdate);
  }
}
