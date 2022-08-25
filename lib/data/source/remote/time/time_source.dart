
import 'package:clean_arch_sample/core/arch/domain/entities/common/data_response.dart';
import 'package:clean_arch_sample/data/models/remote/time/time_response.dart';

abstract class TimeSource {
  Future<DataResponse< TimeResponse>> getTime();
}
