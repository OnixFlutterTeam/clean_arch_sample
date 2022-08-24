import 'package:clean_arch_sample/core/arch/component/remote/base/map_common_server_error.dart';
import 'package:clean_arch_sample/core/arch/domain/entities/common/either.dart';
import 'package:clean_arch_sample/core/arch/domain/entities/failure/api_failure.dart';
import 'package:clean_arch_sample/core/arch/domain/entities/failure/failure.dart';
import 'package:clean_arch_sample/core/arch/logger.dart';
import 'package:clean_arch_sample/data/mapper/todo_list_mapper.dart';
import 'package:clean_arch_sample/data/models/remote/todo/todo_response.dart';
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
  Future<Either<Failure, List<TodoEntity>>> getTodos(
      {bool forceUpdate = false}) async {
    if (!forceUpdate) {
      final cacheTimestamp = await _preferencesSource.getCacheTimestamp();
      final currentTimestamp = DateTime.now().millisecondsSinceEpoch;
      if ((currentTimestamp - cacheTimestamp) <= _cacheLiveTime) {
        final localTodos = await _todoDatabase.getTodos();
        final entities = _todoMappers.mapLocalTodoList(localTodos);
        return Either.right(entities);
      }
    }
    try {
      final response = await _todoSource.getTodos();
      return response.when(
        left: (left) {
          final failure = MapCommonServerError.getServerFailureDetails(left);
          return Either.left(failure);
        },
        right: (right) async {
          final entities = _todoMappers.mapRemoteTodoList(right);
          await _saveTodoToDb(right);
          return Either.right(entities);
        },
      );
    } catch (e) {
      Logger.printException(e);
      //TODO make repository failure
      return Either.left(
        ApiFailure(ServerFailure.exception, message: e.toString()),
      );
    }
  }

  _saveTodoToDb(List<TodoResponse> right) async {
    final models = _todoMappers.mapRemoteToDbTodoList(right);
    await _todoDatabase.clear();
    await _todoDatabase.save(models);
    await _preferencesSource
        .saveCacheTimestamp(DateTime.now().millisecondsSinceEpoch);
  }
}
