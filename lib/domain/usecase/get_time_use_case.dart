import 'package:clean_arch_sample/core/arch/domain/entity/common/result.dart';
import 'package:clean_arch_sample/domain/entity/time/time_entity.dart';
import 'package:clean_arch_sample/domain/repository/time_repository.dart';

class GetTimeUseCase {
  final TimeRepository _timeRepository;

  GetTimeUseCase(this._timeRepository);

  Future<Result<TimeEntity>> call() async {
    return await _timeRepository.getTime();
  }
}
