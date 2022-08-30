import 'package:clean_arch_sample/core/arch/domain/entity/common/result.dart';
import 'package:clean_arch_sample/domain/entity/auth/auth_entity.dart';

abstract class RefreshTokenRepository {
  Future<Result<AuthenticationEntity>> refresh(String refreshToken);
}
