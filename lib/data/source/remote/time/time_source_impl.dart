import 'package:clean_arch_sample/core/arch/component/remote/api_client.dart';
import 'package:clean_arch_sample/core/arch/component/remote/dio_error_handler/dio_error_handler.dart';
import 'package:clean_arch_sample/core/arch/data/remote/error/default_api_error.dart';
import 'package:clean_arch_sample/core/arch/domain/entities/common/either.dart';
import 'package:clean_arch_sample/core/arch/domain/entities/dio_error_handler/dio_error_models.dart';
import 'package:clean_arch_sample/data/models/remote/time/time_response.dart';

import 'time_source.dart';

class TimeSourceImpl extends TimeSource {
  TimeSourceImpl(this._apiClient, this._dioErrorHandler);

  final ApiClient _apiClient;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  final _timeNow = '/api/json/utc/now';

  @override
  Future<Either<CommonResponseError<DefaultApiError>, TimeResponse>>
      getTime() async {
    final result = await _dioErrorHandler
        .processRequest(() => _apiClient.client.get(_timeNow));
    if (result.isLeft) return Either.left(result.left);
    return Either.right(TimeResponse.fromJson(result.right.data!));
  }
}
