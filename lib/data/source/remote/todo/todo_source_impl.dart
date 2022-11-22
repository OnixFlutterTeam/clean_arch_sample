import 'package:clean_arch_sample/core/arch/data/remote/api_client.dart';
import 'package:clean_arch_sample/core/arch/data/remote/dio_request_processor/dio_request_processor.dart';
import 'package:clean_arch_sample/core/arch/domain/entity/common/data_response.dart';
import 'package:clean_arch_sample/data/model/remote/todo/todo_response.dart';
import 'package:clean_arch_sample/data/source/remote/todo/todo_source.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';

class TodoSourceImpl extends TodoSource {
  final ApiClient _apiClient;
  final DioRequestProcessor _dioRequestProcessor;

  final _routeTodosList = '/todos';

  TodoSourceImpl(this._apiClient, this._dioRequestProcessor);

  @override
  Future<DataResponse<List<TodoResponse>>> getTodos() async {
    final request = _apiClient.client.get(
      _routeTodosList,
      options: _apiClient.cacheOptions
          ?.copyWith(
            maxStale: const Nullable(Duration(minutes: 10)),
            policy: _apiClient.getCachePolicy(forceRefresh: false),
          )
          .toOptions(),
    );
    return _dioRequestProcessor.processRequest(
      onRequest: () => request,
      onResponse: (response) =>
          //ignore: unnecessary_lambdas
          (response.data as List).map((e) => TodoResponse.fromJson(e)).toList(),
      checkNetworkConnection: false,
    );
  }
}
