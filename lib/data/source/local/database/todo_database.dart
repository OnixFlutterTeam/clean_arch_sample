import 'package:clean_arch_sample/data/model/local/todo_model.dart';
import 'package:clean_arch_sample/data/source/local/database/base_database.dart';

abstract class TodoDatabase extends BaseDatabase<TodoModel> {
  @override
  String boxName = 'favorites';

  Future<List<TodoModel>> getTodos();

  Future<void> save(List<TodoModel> todos);

  Future<void> clear();
}
