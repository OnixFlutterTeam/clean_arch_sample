import 'package:dio/dio.dart';

import '../../../models/data_response.dart';
import '../../../models/remote/todo_response.dart';
import '../todo_source.dart';

class TodoSourceImpl extends TodoSource {
  final _routeTodosList = '/todos';

  @override
  Future<DataResponse<List<TodoResponse>>> getTodos() async {
    var isConnected = await hasConnection();
    if (!isConnected) {
      return const DataResponse.notConnected();
    }

    try {
      Response response = await dio.get(
        _routeTodosList,
      );
      List<TodoResponse> todos =
          (response.data as List).map((e) => TodoResponse.fromJson(e)).toList();
      return DataResponse.success(todos);
    } on DioError catch (dioError) {
      return DataResponse.error(
        dioError.response?.statusCode ?? -1,
        dioError.response?.statusMessage ?? '',
      );
    } catch (error) {
      return DataResponse.error(-1, error.toString());
    }
  }
}
