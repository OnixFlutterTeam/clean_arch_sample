import '../../domain/entity/result.dart';
import '../../domain/entity/result_error_type.dart';
import '../models/data_response.dart';

class ErrorResponseMapper {
  Result<T> map<T>(DataResponse from) => from.map(
        success: (result) => Result.success(result.data),
        error: (error) => Result.error(
            type: ResultErrorType.network, message: error.errorMessage),
        notConnected: (error) =>
            const Result.error(type: ResultErrorType.connection, message: ''),
      );
}
