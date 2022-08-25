import 'package:clean_arch_sample/core/arch/domain/entities/common/result.dart';
import 'package:clean_arch_sample/domain/entity/time/time_entity.dart';

abstract class TimeRepository {
  Future<Result<TimeEntity>> getTime();
}
