
import 'package:clean_arch_sample/core/arch/domain/entities/common/data_response.dart';
import 'package:clean_arch_sample/data/models/remote/todo/todo_response.dart';

abstract class TodoSource {
  Future<DataResponse<List<TodoResponse>>> getTodos();
}
