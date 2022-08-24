import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_error_models.freezed.dart';

@freezed
class CommonResponseError<Custom> with _$CommonResponseError {
  bool get isNoNetwork => this is _NoNetwork;

  bool get isUnAuthorized => this is _UnAuthorized;

  bool get isTooManyRequests => this is _TooManyRequests;

  bool get isCustomError => this is _CustomError<Custom>;

  bool get isUndefinedError => this is _UndefinedError;

  Custom? get safeCustom => this is _CustomError<Custom>
      ? (this as _CustomError<Custom>).customError
      : null;

  int? get safeStatusCode => this is _CustomError<Custom>
      ? (this as _CustomError<Custom>).statusCode
      : null;

  const CommonResponseError._();

  const factory CommonResponseError.noNetwork() = _NoNetwork;

  const factory CommonResponseError.unAuthorized() = _UnAuthorized;

  const factory CommonResponseError.tooManyRequests() = _TooManyRequests;

  const factory CommonResponseError.customError(
      Custom customError, int? statusCode) = _CustomError;

  const factory CommonResponseError.undefinedError(Object? errorObject) =
      _UndefinedError;
}
