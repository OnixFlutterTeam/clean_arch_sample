import 'package:clean_arch_sample/core/arch/component/remote/base/map_common_server_error.dart';
import 'package:clean_arch_sample/core/arch/domain/entity/common/result.dart';
import 'package:clean_arch_sample/core/arch/domain/entity/failure/api_failure.dart';
import 'package:clean_arch_sample/core/arch/logger.dart';
import 'package:clean_arch_sample/data/mapper/time_mapper.dart';
import 'package:clean_arch_sample/data/source/remote/time/time_source.dart';
import 'package:clean_arch_sample/domain/entity/time/time_entity.dart';
import 'package:clean_arch_sample/domain/repository/time_repository.dart';

class TimeRepositoryImpl extends TimeRepository {
  final TimeSource _timeSource;

  final _timeMappers = TimeMappers();

  TimeRepositoryImpl(
    this._timeSource,
  );

  @override
  Future<Result<TimeEntity>> getTime() async {
    try {
      final response = await _timeSource.getTime();
      if (response.isSuccess()) {
        final entities = _timeMappers.mapRemoteTimeList(response.data);
        return Result.success(entities);
      } else {
        final failure = MapCommonServerError.getServerFailureDetails(response);
        return Result.error(failure: failure);
      }
    } catch (e) {
      Logger.printException(e);
      //TODO make repository failure
      return Result.error(
        failure: ApiFailure(
          ServerFailure.exception,
          message: e.toString(),
        ),
      );
    }
  }
}
