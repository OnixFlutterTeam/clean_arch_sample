import 'package:clean_arch_sample/core/arch/domain/entities/common/either.dart';
import 'package:clean_arch_sample/core/arch/domain/entities/failure/failure.dart';
import 'package:clean_arch_sample/domain/entity/time/time_entity.dart';
import 'package:clean_arch_sample/domain/repository/time_repository.dart';

class GetTimeUseCase {
  final TimeRepository _timeRepository;

  GetTimeUseCase(this._timeRepository);

  Future<Either<Failure, TimeEntity>> call() async {
    return await _timeRepository.getTime();
  }
}
