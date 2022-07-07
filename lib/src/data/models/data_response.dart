import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_response.freezed.dart';

@freezed
class DataResponse<T> with _$DataResponse {
  const DataResponse._();

  const factory DataResponse.success(T data) = _DataResponseSuccess;

  const factory DataResponse.error(int errorCode, String errorMessage) =
      _RemoteResponseError;

  const factory DataResponse.notConnected() = _NoInternetConnection;

  bool isSuccess() => this is _DataResponseSuccess;

  T get data => (this as _DataResponseSuccess).data;

  bool isError() => this is! _DataResponseSuccess;
}
