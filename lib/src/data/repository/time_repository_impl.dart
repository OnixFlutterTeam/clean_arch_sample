import 'package:clean_arch_sample/src/core/arch/component/remote/base/map_common_server_error.dart';
import 'package:clean_arch_sample/src/core/arch/domain/entities/common/either.dart';
import 'package:clean_arch_sample/src/core/arch/domain/entities/failure/api_failure.dart';
import 'package:clean_arch_sample/src/core/arch/domain/entities/failure/failure.dart';
import 'package:clean_arch_sample/src/core/arch/logger.dart';
import 'package:clean_arch_sample/src/data/mapper/time_mapper.dart';
import 'package:clean_arch_sample/src/data/source/remote/time/time_source.dart';
import 'package:clean_arch_sample/src/domain/entity/time/time_entity.dart';
import 'package:clean_arch_sample/src/domain/repository/time_repository.dart';

class TimeRepositoryImpl extends TimeRepository {
  final TimeSource _timeSource;

  final _timeMappers = TimeMappers();

  TimeRepositoryImpl(
    this._timeSource,
  );

  @override
  Future<Either<Failure, TimeEntity>> getTime() async {
    try {
      final response = await _timeSource.getTime();
      return response.when(
        left: (left) {
          final failure = MapCommonServerError.getServerFailureDetails(left);
          return Either.left(failure);
        },
        right: (right) async {
          final entities = _timeMappers.mapRemoteTimeList(right);
          return Either.right(entities);
        },
      );
    } catch (e) {
      Logger.printException(e);
      //TODO make repository failure
      return Either.left(
        ApiFailure(ServerFailure.exception, message: e.toString()),
      );
    }
  }
}
