import 'package:clean_arch_sample/core/arch/domain/entity/common/data_response.dart';
import 'package:clean_arch_sample/data/model/remote/time/time_response.dart';

abstract class TimeSource {
  Future<DataResponse<TimeResponse>> getTime();
}
