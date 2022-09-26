import 'package:clean_arch_sample/core/arch/domain/entity/common/result.dart';
import 'package:clean_arch_sample/domain/entity/auth/auth_entity.dart';
import 'package:clean_arch_sample/domain/repository/refresh_token_repository.dart';

class RefreshTokenRepositoryImpl implements RefreshTokenRepository {
  @override
  Future<Result<AuthenticationEntity>> refresh(String refreshToken) async {
    // TODO: implement refresh
    throw UnimplementedError();
    //implementation like this
    // try {
    //   final response = await _authSource.refreshToken(refreshToken);
    //   if (response.isSuccess()) {
    //     final entities = _authMappers.mapRefreshEntity(right);
    //     return Result.success(entities);
    //   } else {
    //     final failure = MapCommonServerError.getServerFailureDetails(response);
    //     return Result.error(failure: failure);
    //   }
    // } catch (e) {
    //   Logger.printException(e);
    //   //TODO make repository failure
    //   return Result.error(
    //     failure: ApiFailure(
    //       ServerFailure.exception,
    //       message: e.toString(),
    //     ),
    //   );
    // }
  }
}
