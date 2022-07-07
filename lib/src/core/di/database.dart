import 'package:get_it/get_it.dart';

import '../../data/source/local/database/impl/todo_database_impl.dart';
import '../../data/source/local/database/todo_database.dart';

void registerDatabase(GetIt getIt) {
  getIt.registerSingleton<TodoDatabase>(TodoDatabaseImpl());
}
