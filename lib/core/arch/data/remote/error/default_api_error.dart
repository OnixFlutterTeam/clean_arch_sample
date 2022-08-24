import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_api_error.freezed.dart';
part 'default_api_error.g.dart';

@freezed
class DefaultApiError with _$DefaultApiError {
  const factory DefaultApiError({
    required String name,
    required String code,
  }) = _DefaultApiError;

  factory DefaultApiError.fromJson(Map<String, dynamic> json) =>
      _$DefaultApiErrorFromJson(json);
}
