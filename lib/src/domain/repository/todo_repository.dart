import 'package:clean_arch_sample/src/core/arch/domain/entities/common/either.dart';
import 'package:clean_arch_sample/src/core/arch/domain/entities/failure/failure.dart';
import 'package:clean_arch_sample/src/domain/entity/todo/todo_entity.dart';

abstract class TodoRepository {
  Future<Either<Failure, List<TodoEntity>>> getTodos({
    bool forceUpdate = false,
  });
}
