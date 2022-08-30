import 'package:clean_arch_sample/core/arch/domain/common/converter/mapper.dart';
import 'package:clean_arch_sample/data/model/local/todo_model.dart';
import 'package:clean_arch_sample/data/model/remote/todo/todo_response.dart';
import 'package:clean_arch_sample/domain/entity/todo/todo_entity.dart';

class _TodoRemoteListMapper
    implements Mapper<List<TodoResponse>, List<TodoEntity>> {
  @override
  List<TodoEntity> map(List<TodoResponse> todos) {
    return todos
        .map(
          (e) => TodoEntity(
            userId: e.userId ?? -1,
            id: e.id ?? -1,
            title: e.title ?? '',
            completed: e.completed ?? false,
          ),
        )
        .toList();
  }
}

class _TodoRemoteToDbListMapper
    implements Mapper<List<TodoResponse>, List<TodoModel>> {
  @override
  List<TodoModel> map(List<TodoResponse> todos) {
    return todos
        .map(
          (e) => TodoModel(
            userId: e.userId ?? -1,
            id: e.id ?? -1,
            title: e.title ?? '',
            completed: e.completed ?? false,
          ),
        )
        .toList();
  }
}

class _TodoLocalListMapper
    implements Mapper<List<TodoModel>, List<TodoEntity>> {
  @override
  List<TodoEntity> map(List<TodoModel> todos) {
    return todos
        .map(
          (e) => TodoEntity(
            userId: e.userId,
            id: e.id,
            title: e.title,
            completed: e.completed,
          ),
        )
        .toList();
  }
}

class TodoMappers {
  final _todoRemoteListMapper = _TodoRemoteListMapper();
  final _todoRemoteToDbListMapper = _TodoRemoteToDbListMapper();
  final _todoLocalListMapper = _TodoLocalListMapper();

  List<TodoEntity> mapRemoteTodoList(List<TodoResponse> param) =>
      _todoRemoteListMapper.map(param);

  List<TodoModel> mapRemoteToDbTodoList(List<TodoResponse> param) =>
      _todoRemoteToDbListMapper.map(param);

  List<TodoEntity> mapLocalTodoList(List<TodoModel> param) =>
      _todoLocalListMapper.map(param);
}
