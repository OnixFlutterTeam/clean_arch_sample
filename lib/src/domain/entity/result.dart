import 'package:freezed_annotation/freezed_annotation.dart';

import 'result_error_type.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result {
  const Result._();

  const factory Result.success(T data) = _ResultSuccess;

  const factory Result.error(
      {required ResultErrorType type, required String message}) = _ResultError;

  bool get success => this is _ResultSuccess;

  ///WARNING. ALWAYS CHECK success == true before call
  T get data => (this as _ResultSuccess).data;
}
