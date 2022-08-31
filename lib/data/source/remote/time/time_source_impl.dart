import 'package:clean_arch_sample/core/arch/data/remote/api_client.dart';
import 'package:clean_arch_sample/core/arch/data/remote/dio_request_processor/dio_request_processor.dart';
import 'package:clean_arch_sample/core/arch/domain/entity/common/data_response.dart';
import 'package:clean_arch_sample/data/model/remote/time/time_response.dart';

import 'time_source.dart';

class TimeSourceImpl extends TimeSource {
  TimeSourceImpl(this._apiClient, this._dioRequestProcessor);

  final ApiClient _apiClient;
  final DioRequestProcessor _dioRequestProcessor;

  final _timeNow = '/api/json/utc/now';

  @override
  Future<DataResponse<TimeResponse>> getTime() async {
    final request = _apiClient.client.get(_timeNow);
    return _dioRequestProcessor.processRequest(
      onRequest: () => request,
      onResponse: (response) => TimeResponse.fromJson(response.data),
    );
  }
}
