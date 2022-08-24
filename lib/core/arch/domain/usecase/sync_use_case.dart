import 'package:clean_arch_sample/core/arch/domain/entities/common/either.dart';
import 'package:clean_arch_sample/core/arch/domain/entities/failure/failure.dart';

import 'use_case.dart';

abstract class SyncUseCase<Type> implements UseCase<Type> {
  Either<Failure, Type> execute({UseCaseParams? param});

  Either<Failure, Type> call({UseCaseParams? param}) => execute(param: param);
}
