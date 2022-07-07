import 'package:clean_arch_sample/src/data/mapper/todo_list_mapper.dart';
import 'package:clean_arch_sample/src/data/source/local/database/todo_database.dart';
import 'package:clean_arch_sample/src/data/source/remote/todo_source.dart';
import 'package:clean_arch_sample/src/domain/entity/result.dart';
import 'package:clean_arch_sample/src/domain/entity/todo_entity.dart';

import '../../domain/repository/todo_repository.dart';
import '../source/local/preferences_source.dart';

class TodoRepositoryImpl extends TodoRepository {
  final TodoSource _todoSource;
  final TodoDatabase _todoDatabase;
  final PreferencesSource _preferencesSource;

  final TodoMappers _todoMappers = TodoMappers();
  final _cacheLiveTime = 300000; //5 minutes in millis

  TodoRepositoryImpl(
    this._todoSource,
    this._todoDatabase,
    this._preferencesSource,
  );

  @override
  Future<Result<List<TodoEntity>>> getTodos({bool forceUpdate = false}) async {
    if (!forceUpdate) {
      final cacheTimestamp = await _preferencesSource.getCacheTimestamp();
      final currentTimestamp = DateTime.now().millisecondsSinceEpoch;
      if ((currentTimestamp - cacheTimestamp) <= _cacheLiveTime) {
        final localTodos = await _todoDatabase.getTodos();
        final entities = _todoMappers.mapLocalTodoList(localTodos);
        return Result.success(entities);
      }
    }

    final response = await _todoSource.getTodos();
    if (response.isSuccess()) {
      final entities = _todoMappers.mapRemoteTodoList(response.data);
      final models = _todoMappers.mapRemoteToDbTodoList(response.data);
      await _todoDatabase.clear();
      await _todoDatabase.save(models);
      await _preferencesSource
          .saveCacheTimestamp(DateTime.now().millisecondsSinceEpoch);
      return Result.success(entities);
    } else {
      await _preferencesSource.saveCacheTimestamp(-1);
      return mapError(response);
    }
  }
}
