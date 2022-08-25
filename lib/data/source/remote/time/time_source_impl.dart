import 'package:clean_arch_sample/core/arch/component/remote/api_client.dart';
import 'package:clean_arch_sample/core/arch/component/remote/dio_error_handler/dio_error_handler.dart';
import 'package:clean_arch_sample/core/arch/domain/entities/common/data_response.dart';
import 'package:clean_arch_sample/data/models/remote/time/time_response.dart';

import 'time_source.dart';

class TimeSourceImpl extends TimeSource {
  TimeSourceImpl(this._apiClient, this._dioErrorHandler);

  final ApiClient _apiClient;
  final DioErrorHandler _dioErrorHandler;

  final _timeNow = '/api/json/utc/now';

  @override
  Future<DataResponse<TimeResponse>> getTime() async {
    final request = _apiClient.client.get(_timeNow);
    return _dioErrorHandler.processRequest(
      onRequest: () => request,
      onResponse: (response) => TimeResponse.fromJson(response.data),
    );
  }
}
