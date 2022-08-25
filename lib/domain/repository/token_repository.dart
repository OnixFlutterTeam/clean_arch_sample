abstract class TokenRepository {
  String? accessToken;
  String? refreshToken;

  Future<void> clear();

  Future<void> update({
    required String access,
    required String refresh,
  });
}
