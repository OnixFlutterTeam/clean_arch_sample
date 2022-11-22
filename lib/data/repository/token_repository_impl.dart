import 'package:clean_arch_sample/domain/entity/auth/auth_entity.dart';
import 'package:clean_arch_sample/domain/repository/token_repository.dart';

class TokenRepositoryImpl implements TokenRepository {
  @override
  String? accessToken;

  @override
  String? refreshToken;

  @override
  Future<void> clear() {
    // TODO: implement clear
    throw UnimplementedError();
  }

  @override
  Future<void> update(AuthenticationEntity authEntity) async {
    accessToken = authEntity.accessToken;
    refreshToken = authEntity.refreshToken;
    // TODO: implement saveTokens
  }
}
