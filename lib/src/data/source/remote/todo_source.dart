import 'package:clean_arch_sample/src/data/models/data_response.dart';
import 'package:clean_arch_sample/src/data/models/remote/todo_response.dart';

import 'base_source.dart';

abstract class TodoSource extends BaseSource {
  Future<DataResponse<List<TodoResponse>>> getTodos();
}
