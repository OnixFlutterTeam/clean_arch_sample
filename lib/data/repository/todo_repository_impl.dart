import 'package:clean_arch_sample/core/arch/data/remote/base/map_common_server_error.dart';
import 'package:clean_arch_sample/core/arch/domain/entity/common/result.dart';
import 'package:clean_arch_sample/core/arch/domain/entity/failure/api_failure.dart';
import 'package:clean_arch_sample/core/arch/logger.dart';
import 'package:clean_arch_sample/data/mapper/todo_list_mapper.dart';
import 'package:clean_arch_sample/data/model/remote/todo/todo_response.dart';
import 'package:clean_arch_sample/data/source/local/database/todo_database.dart';
import 'package:clean_arch_sample/data/source/local/preferences_source/preferences_source.dart';
import 'package:clean_arch_sample/data/source/remote/todo/todo_source.dart';
import 'package:clean_arch_sample/domain/entity/todo/todo_entity.dart';
import 'package:clean_arch_sample/domain/repository/todo_repository.dart';

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
    try {
      final response = await _todoSource.getTodos();
      if (response.isSuccess()) {
        final entities = _todoMappers.mapRemoteTodoList(response.data);
        await _saveTodoToDb(response.data);
        return Result.success(entities);
      } else {
        final failure = MapCommonServerError.getServerFailureDetails(response);
        return Result.error(failure: failure);
      }
    } catch (e) {
      Logger.printException(e);
      //TODO make repository failure
      return Result.error(
        failure: ApiFailure(
          ServerFailure.exception,
          message: e.toString(),
        ),
      );
    }
  }

  _saveTodoToDb(List<TodoResponse> todos) async {
    final models = _todoMappers.mapRemoteToDbTodoList(todos);
    await _todoDatabase.clear();
    await _todoDatabase.save(models);
    await _preferencesSource
        .saveCacheTimestamp(DateTime.now().millisecondsSinceEpoch);
  }
}
