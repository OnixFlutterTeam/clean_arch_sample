import 'package:clean_arch_sample/core/arch/domain/entities/common/either.dart';
import 'package:clean_arch_sample/core/arch/domain/entities/failure/failure.dart';
import 'package:clean_arch_sample/domain/entity/auth/auth_entity.dart';
import 'package:clean_arch_sample/domain/repository/refresh_token_repository.dart';

class RefreshTokenRepositoryImpl implements RefreshTokenRepository {
  @override
  Future<Either<Failure, AuthenticationEntity>> refresh(
      String refreshToken) async {
    // TODO: implement refresh
    throw UnimplementedError();
    //implementation like this
    // try {
    //   final response = await _authSource.refreshToken(refreshToken);
    //   return response.when(
    //     left: (left) {
    //       final failure = MapCommonServerError.getServerFailureDetails(left);
    //       return Either.left(failure);
    //     },
    //     right: (right) async {
    //       final entities = _authMappers.mapRefreshEntity(right);
    //       return Either.right(entities);
    //     },
    //   );
    // } catch (e) {
    //   Logger.printException(e);
    //   //TODO make repository failure
    //   return Either.left(
    //     ApiFailure(ServerFailure.exception, message: e.toString()),
    //   );
    // }
  }
}
