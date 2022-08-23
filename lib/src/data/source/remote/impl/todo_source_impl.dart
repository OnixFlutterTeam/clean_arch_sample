import 'package:clean_arch_sample/src/core/arch/component/remote/api_client.dart';
import 'package:clean_arch_sample/src/core/arch/component/remote/dio_error_handler/dio_error_handler.dart';
import 'package:clean_arch_sample/src/core/arch/data/remote/error/default_api_error.dart';
import 'package:clean_arch_sample/src/core/arch/domain/entities/common/either.dart';
import 'package:clean_arch_sample/src/core/arch/domain/entities/dio_error_handler/dio_error_models.dart';
import 'package:clean_arch_sample/src/data/models/remote/todo_response.dart';
import 'package:clean_arch_sample/src/data/source/remote/todo_source.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';

class TodoSourceImpl extends TodoSource {
  TodoSourceImpl(this._apiClient, this._dioErrorHandler);

  final ApiClient _apiClient;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  final _routeTodosList = '/todos';

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<TodoResponse>>>
      getTodos() async {
    final result = await _dioErrorHandler.processRequest(
      () => _apiClient.client.get(
        _routeTodosList,
        options: _apiClient.cacheOptions
            ?.copyWith(
              maxStale: const Nullable(Duration(minutes: 10)),
              policy: _apiClient.getCachePolicy(false),
            )
            .toOptions(),
      ),
    );
    if (result.isLeft) return Either.left(result.left);
    final todos = (result.right.data as List)
        .map((e) => TodoResponse.fromJson(e))
        .toList();

    return Either.right(todos);
  }
}
