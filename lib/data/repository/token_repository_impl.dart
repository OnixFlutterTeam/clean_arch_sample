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
  Future<void> update({required String access, required String refresh}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
