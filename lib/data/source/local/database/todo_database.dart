import 'package:clean_arch_sample/data/models/local/todo_model.dart';

import 'base_database.dart';

abstract class TodoDatabase extends BaseDatabase<TodoModel> {
  @override
  String boxName = 'favorites';

  Future<List<TodoModel>> getTodos();

  Future<void> save(List<TodoModel> todos);

  Future<void> clear();
}
