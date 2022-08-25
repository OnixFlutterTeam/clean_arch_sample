import 'package:clean_arch_sample/core/arch/component/remote/api_client.dart';
import 'package:clean_arch_sample/core/arch/component/remote/dio_error_handler/dio_error_handler.dart';
import 'package:clean_arch_sample/core/arch/domain/entities/common/data_response.dart';
import 'package:clean_arch_sample/data/models/remote/todo/todo_response.dart';
import 'package:clean_arch_sample/data/source/remote/todo/todo_source.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';

class TodoSourceImpl extends TodoSource {
  TodoSourceImpl(this._apiClient, this._dioErrorHandler);

  final ApiClient _apiClient;
  final DioErrorHandler _dioErrorHandler;

  final _routeTodosList = '/todos';

  @override
  Future<DataResponse<List<TodoResponse>>> getTodos() async {
    Future request = _apiClient.client.get(
      _routeTodosList,
      options: _apiClient.cacheOptions
          ?.copyWith(
            maxStale: const Nullable(Duration(minutes: 10)),
            policy: _apiClient.getCachePolicy(false),
          )
          .toOptions(),
    );
    return _dioErrorHandler.processRequest(
        onRequest: () => request,
        onResponse: (response) => (response.data as List)
            .map((e) => TodoResponse.fromJson(e))
            .toList());
  }
}
