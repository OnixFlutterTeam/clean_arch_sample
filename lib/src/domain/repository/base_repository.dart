import '../../data/mapper/error_mapper.dart';
import '../../data/models/data_response.dart';
import '../entity/result.dart';

abstract class BaseRepository {
  final _errorMapper = ErrorResponseMapper();

  Result<K> mapError<K>(DataResponse response) => _errorMapper.map(response);
}
