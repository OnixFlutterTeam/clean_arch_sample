import 'package:clean_arch_sample/core/arch/domain/entities/common/either.dart';
import 'package:clean_arch_sample/core/arch/domain/entities/failure/failure.dart';
import 'package:clean_arch_sample/domain/entity/auth/auth_entity.dart';

abstract class RefreshTokenRepository {
  Future<Either<Failure, AuthenticationEntity>> refresh(String refreshToken);
}
