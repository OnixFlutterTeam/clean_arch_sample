import 'package:clean_arch_sample/core/arch/domain/entity/failure/failure.dart';

class ApiFailure implements FeatureFailure {
  final ServerFailure failure;
  final String message;

  ApiFailure(this.failure, {this.message = ''});

  @override
  String toString() {
    return 'ApiFailure{$failure, message: $message}';
  }
}

enum ServerFailure {
  noNetwork,
  exception,
  unAuthorized,
  tooManyRequests,
  response,
  unknown,
}
