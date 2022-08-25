import 'package:clean_arch_sample/core/arch/domain/entities/failure/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result {
  const Result._();

  const factory Result.success(T data) = ResultSuccess;

  const factory Result.error({
    required Failure failure,
  }) = ResultError;


  bool get success => this is ResultSuccess;

  bool get isError => this is ResultError;

  ///WARNING. ALWAYS CHECK success == true before call
  T get data => (this as ResultSuccess).data;

  ///WARNING. ALWAYS CHECK isError == true before call
  ResultError get error => this as ResultError;
}
