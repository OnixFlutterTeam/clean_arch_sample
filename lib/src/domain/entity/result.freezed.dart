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
    required TResult Function(ResultErrorType type, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(ResultErrorType type, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(ResultErrorType type, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess<T> value) success,
    required TResult Function(_ResultError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? success,
    TResult Function(_ResultError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? success,
    TResult Function(_ResultError<T> value)? error,
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
abstract class _$$_ResultSuccessCopyWith<T, $Res> {
  factory _$$_ResultSuccessCopyWith(
          _$_ResultSuccess<T> value, $Res Function(_$_ResultSuccess<T>) then) =
      __$$_ResultSuccessCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$_ResultSuccessCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res>
    implements _$$_ResultSuccessCopyWith<T, $Res> {
  __$$_ResultSuccessCopyWithImpl(
      _$_ResultSuccess<T> _value, $Res Function(_$_ResultSuccess<T>) _then)
      : super(_value, (v) => _then(v as _$_ResultSuccess<T>));

  @override
  _$_ResultSuccess<T> get _value => super._value as _$_ResultSuccess<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_ResultSuccess<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ResultSuccess<T> extends _ResultSuccess<T> {
  const _$_ResultSuccess(this.data) : super._();

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
            other is _$_ResultSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_ResultSuccessCopyWith<T, _$_ResultSuccess<T>> get copyWith =>
      __$$_ResultSuccessCopyWithImpl<T, _$_ResultSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(ResultErrorType type, String message) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(ResultErrorType type, String message)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(ResultErrorType type, String message)? error,
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
    required TResult Function(_ResultSuccess<T> value) success,
    required TResult Function(_ResultError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? success,
    TResult Function(_ResultError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? success,
    TResult Function(_ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ResultSuccess<T> extends Result<T> {
  const factory _ResultSuccess(final T data) = _$_ResultSuccess<T>;
  const _ResultSuccess._() : super._();

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ResultSuccessCopyWith<T, _$_ResultSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResultErrorCopyWith<T, $Res> {
  factory _$$_ResultErrorCopyWith(
          _$_ResultError<T> value, $Res Function(_$_ResultError<T>) then) =
      __$$_ResultErrorCopyWithImpl<T, $Res>;
  $Res call({ResultErrorType type, String message});
}

/// @nodoc
class __$$_ResultErrorCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res>
    implements _$$_ResultErrorCopyWith<T, $Res> {
  __$$_ResultErrorCopyWithImpl(
      _$_ResultError<T> _value, $Res Function(_$_ResultError<T>) _then)
      : super(_value, (v) => _then(v as _$_ResultError<T>));

  @override
  _$_ResultError<T> get _value => super._value as _$_ResultError<T>;

  @override
  $Res call({
    Object? type = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ResultError<T>(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ResultErrorType,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResultError<T> extends _ResultError<T> {
  const _$_ResultError({required this.type, required this.message}) : super._();

  @override
  final ResultErrorType type;
  @override
  final String message;

  @override
  String toString() {
    return 'Result<$T>.error(type: $type, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultError<T> &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ResultErrorCopyWith<T, _$_ResultError<T>> get copyWith =>
      __$$_ResultErrorCopyWithImpl<T, _$_ResultError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(ResultErrorType type, String message) error,
  }) {
    return error(type, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(ResultErrorType type, String message)? error,
  }) {
    return error?.call(type, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(ResultErrorType type, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(type, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess<T> value) success,
    required TResult Function(_ResultError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? success,
    TResult Function(_ResultError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? success,
    TResult Function(_ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ResultError<T> extends Result<T> {
  const factory _ResultError(
      {required final ResultErrorType type,
      required final String message}) = _$_ResultError<T>;
  const _ResultError._() : super._();

  ResultErrorType get type => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ResultErrorCopyWith<T, _$_ResultError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
