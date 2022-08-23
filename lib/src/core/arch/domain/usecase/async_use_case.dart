import 'package:clean_arch_sample/src/core/arch/domain/entities/common/either.dart';
import 'package:clean_arch_sample/src/core/arch/domain/entities/failure/failure.dart';

import 'use_case.dart';

abstract class AsyncUseCase<Type> implements UseCase<Type> {
  Future<Either<Failure, Type>> execute({UseCaseParams? param});

  Future<Either<Failure, Type>> call({UseCaseParams? param}) =>
      execute(param: param);
}
