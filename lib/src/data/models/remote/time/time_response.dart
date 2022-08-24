import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_response.freezed.dart';
part 'time_response.g.dart';

@freezed
class TimeResponse with _$TimeResponse {
  const factory TimeResponse({
    @JsonKey(name: 'currentDateTime') required DateTime currentDateTime,
  }) = _TimeResponse;

  factory TimeResponse.fromJson(Map<String, dynamic> json) =>
      _$TimeResponseFromJson(json);
}
