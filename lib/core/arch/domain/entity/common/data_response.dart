import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_response.freezed.dart';

@freezed
class DataResponse<T> with _$DataResponse {
  T get data => (this as _DataResponseSuccess).data;

  const DataResponse._();

  const factory DataResponse.success(T data) = _DataResponseSuccess;

  const factory DataResponse.undefinedError(Object? errorObject) =
      _UndefinedError;

  const factory DataResponse.apiError(error) = _ApiError;

  const factory DataResponse.notConnected() = _NoInternetConnection;

  const factory DataResponse.unauthorized() = _Unauthorized;

  const factory DataResponse.tooManyRequests() = _TooManyRequests;

  bool isSuccess() => this is _DataResponseSuccess;

  bool isError() => this is! _DataResponseSuccess;
}
