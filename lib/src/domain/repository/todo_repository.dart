import '../entity/result.dart';
import '../entity/todo_entity.dart';
import 'base_repository.dart';

abstract class TodoRepository extends BaseRepository {
  Future<Result<List<TodoEntity>>> getTodos({bool forceUpdate = false});
}
