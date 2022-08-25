// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultSuccess<T> value) success,
    required TResult Function(ResultError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultSuccess<T> value)? success,
    TResult Function(ResultError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultSuccess<T> value)? success,
    TResult Function(ResultError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res> implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<T> _value;
  // ignore: unused_field
  final $Res Function(Result<T>) _then;
}

/// @nodoc
abstract class _$$ResultSuccessCopyWith<T, $Res> {
  factory _$$ResultSuccessCopyWith(
          _$ResultSuccess<T> value, $Res Function(_$ResultSuccess<T>) then) =
      __$$ResultSuccessCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$ResultSuccessCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res>
    implements _$$ResultSuccessCopyWith<T, $Res> {
  __$$ResultSuccessCopyWithImpl(
      _$ResultSuccess<T> _value, $Res Function(_$ResultSuccess<T>) _then)
      : super(_value, (v) => _then(v as _$ResultSuccess<T>));

  @override
  _$ResultSuccess<T> get _value => super._value as _$ResultSuccess<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResultSuccess<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResultSuccess<T> extends ResultSuccess<T> {
  const _$ResultSuccess(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$ResultSuccessCopyWith<T, _$ResultSuccess<T>> get copyWith =>
      __$$ResultSuccessCopyWithImpl<T, _$ResultSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Failure failure) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure failure)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultSuccess<T> value) success,
    required TResult Function(ResultError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultSuccess<T> value)? success,
    TResult Function(ResultError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultSuccess<T> value)? success,
    TResult Function(ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ResultSuccess<T> extends Result<T> {
  const factory ResultSuccess(final T data) = _$ResultSuccess<T>;
  const ResultSuccess._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$ResultSuccessCopyWith<T, _$ResultSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultErrorCopyWith<T, $Res> {
  factory _$$ResultErrorCopyWith(
          _$ResultError<T> value, $Res Function(_$ResultError<T>) then) =
      __$$ResultErrorCopyWithImpl<T, $Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$ResultErrorCopyWithImpl<T, $Res> extends _$ResultCopyWithImpl<T, $Res>
    implements _$$ResultErrorCopyWith<T, $Res> {
  __$$ResultErrorCopyWithImpl(
      _$ResultError<T> _value, $Res Function(_$ResultError<T>) _then)
      : super(_value, (v) => _then(v as _$ResultError<T>));

  @override
  _$ResultError<T> get _value => super._value as _$ResultError<T>;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$ResultError<T>(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ResultError<T> extends ResultError<T> {
  const _$ResultError({required this.failure}) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'Result<$T>.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultError<T> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$ResultErrorCopyWith<T, _$ResultError<T>> get copyWith =>
      __$$ResultErrorCopyWithImpl<T, _$ResultError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultSuccess<T> value) success,
    required TResult Function(ResultError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultSuccess<T> value)? success,
    TResult Function(ResultError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultSuccess<T> value)? success,
    TResult Function(ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResultError<T> extends Result<T> {
  const factory ResultError({required final Failure failure}) =
      _$ResultError<T>;
  const ResultError._() : super._();

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ResultErrorCopyWith<T, _$ResultError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
