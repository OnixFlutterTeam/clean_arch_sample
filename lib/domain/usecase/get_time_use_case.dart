import 'package:clean_arch_sample/core/arch/domain/entities/common/either.dart';
import 'package:clean_arch_sample/core/arch/domain/entities/failure/failure.dart';
import 'package:clean_arch_sample/core/arch/domain/usecase/async_use_case.dart';
import 'package:clean_arch_sample/core/arch/domain/usecase/use_case.dart';
import 'package:clean_arch_sample/domain/entity/time/time_entity.dart';
import 'package:clean_arch_sample/domain/repository/time_repository.dart';

class GetTimeUseCase extends AsyncUseCase<TimeEntity> {
  final TimeRepository _timeRepository;

  GetTimeUseCase(this._timeRepository);

  @override
  Future<Either<Failure, TimeEntity>> execute({UseCaseParams? param}) async {
    return await _timeRepository.getTime();
  }
}
