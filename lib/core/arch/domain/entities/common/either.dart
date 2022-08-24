import 'package:freezed_annotation/freezed_annotation.dart';

part 'either.freezed.dart';

/// Entity to describe calculations that can go either way [L] or [R]
/// Classically used for error handling, the normal left side is the error and the right side is the result
@freezed
class Either<L, R> with _$Either<L, R> {
  bool get isLeft => this is _EitherLeft<L, R>;

  bool get isRight => this is _EitherRight<L, R>;

  /// Represents the left side of the [Either] class, which by convention is "Error"
  L get left => (this as _EitherLeft<L, R>).left;

  /// Represents the right side of the [Either] class, which by convention is "Success"
  R get right => (this as _EitherRight<L, R>).right;

  const Either._();

  const factory Either.left(L left) = _EitherLeft;

  const factory Either.right(R right) = _EitherRight;
}
