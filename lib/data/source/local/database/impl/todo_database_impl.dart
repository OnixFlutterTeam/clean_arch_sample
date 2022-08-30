import 'package:clean_arch_sample/data/model/local/todo_model.dart';

import '../todo_database.dart';

class TodoDatabaseImpl extends TodoDatabase {
  @override
  Future<List<TodoModel>> getTodos() =>
      withBox().then((box) => box.values.toList());

  @override
  Future<void> save(List<TodoModel> todos) async =>
      withBox().then((box) => box.putAll(todos.asMap()));

  @override
  Future<void> clear() async => withBox().then((box) => box.clear());
}
