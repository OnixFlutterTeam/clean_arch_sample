// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(int errorCode, String errorMessage) error,
    required TResult Function() notConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(int errorCode, String errorMessage)? error,
    TResult Function()? notConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(int errorCode, String errorMessage)? error,
    TResult Function()? notConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataResponseSuccess<T> value) success,
    required TResult Function(_RemoteResponseError<T> value) error,
    required TResult Function(_NoInternetConnection<T> value) notConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataResponseSuccess<T> value)? success,
    TResult Function(_RemoteResponseError<T> value)? error,
    TResult Function(_NoInternetConnection<T> value)? notConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataResponseSuccess<T> value)? success,
    TResult Function(_RemoteResponseError<T> value)? error,
    TResult Function(_NoInternetConnection<T> value)? notConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataResponseCopyWith<T, $Res> {
  factory $DataResponseCopyWith(
          DataResponse<T> value, $Res Function(DataResponse<T>) then) =
      _$DataResponseCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$DataResponseCopyWithImpl<T, $Res>
    implements $DataResponseCopyWith<T, $Res> {
  _$DataResponseCopyWithImpl(this._value, this._then);

  final DataResponse<T> _value;
  // ignore: unused_field
  final $Res Function(DataResponse<T>) _then;
}

/// @nodoc
abstract class _$$_DataResponseSuccessCopyWith<T, $Res> {
  factory _$$_DataResponseSuccessCopyWith(_$_DataResponseSuccess<T> value,
          $Res Function(_$_DataResponseSuccess<T>) then) =
      __$$_DataResponseSuccessCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$_DataResponseSuccessCopyWithImpl<T, $Res>
    extends _$DataResponseCopyWithImpl<T, $Res>
    implements _$$_DataResponseSuccessCopyWith<T, $Res> {
  __$$_DataResponseSuccessCopyWithImpl(_$_DataResponseSuccess<T> _value,
      $Res Function(_$_DataResponseSuccess<T>) _then)
      : super(_value, (v) => _then(v as _$_DataResponseSuccess<T>));

  @override
  _$_DataResponseSuccess<T> get _value =>
      super._value as _$_DataResponseSuccess<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_DataResponseSuccess<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_DataResponseSuccess<T> extends _DataResponseSuccess<T> {
  const _$_DataResponseSuccess(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'DataResponse<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataResponseSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_DataResponseSuccessCopyWith<T, _$_DataResponseSuccess<T>> get copyWith =>
      __$$_DataResponseSuccessCopyWithImpl<T, _$_DataResponseSuccess<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(int errorCode, String errorMessage) error,
    required TResult Function() notConnected,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(int errorCode, String errorMessage)? error,
    TResult Function()? notConnected,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(int errorCode, String errorMessage)? error,
    TResult Function()? notConnected,
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
    required TResult Function(_DataResponseSuccess<T> value) success,
    required TResult Function(_RemoteResponseError<T> value) error,
    required TResult Function(_NoInternetConnection<T> value) notConnected,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataResponseSuccess<T> value)? success,
    TResult Function(_RemoteResponseError<T> value)? error,
    TResult Function(_NoInternetConnection<T> value)? notConnected,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataResponseSuccess<T> value)? success,
    TResult Function(_RemoteResponseError<T> value)? error,
    TResult Function(_NoInternetConnection<T> value)? notConnected,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _DataResponseSuccess<T> extends DataResponse<T> {
  const factory _DataResponseSuccess(final T data) = _$_DataResponseSuccess<T>;
  const _DataResponseSuccess._() : super._();

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DataResponseSuccessCopyWith<T, _$_DataResponseSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoteResponseErrorCopyWith<T, $Res> {
  factory _$$_RemoteResponseErrorCopyWith(_$_RemoteResponseError<T> value,
          $Res Function(_$_RemoteResponseError<T>) then) =
      __$$_RemoteResponseErrorCopyWithImpl<T, $Res>;
  $Res call({int errorCode, String errorMessage});
}

/// @nodoc
class __$$_RemoteResponseErrorCopyWithImpl<T, $Res>
    extends _$DataResponseCopyWithImpl<T, $Res>
    implements _$$_RemoteResponseErrorCopyWith<T, $Res> {
  __$$_RemoteResponseErrorCopyWithImpl(_$_RemoteResponseError<T> _value,
      $Res Function(_$_RemoteResponseError<T>) _then)
      : super(_value, (v) => _then(v as _$_RemoteResponseError<T>));

  @override
  _$_RemoteResponseError<T> get _value =>
      super._value as _$_RemoteResponseError<T>;

  @override
  $Res call({
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_RemoteResponseError<T>(
      errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoteResponseError<T> extends _RemoteResponseError<T> {
  const _$_RemoteResponseError(this.errorCode, this.errorMessage) : super._();

  @override
  final int errorCode;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'DataResponse<$T>.error(errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteResponseError<T> &&
            const DeepCollectionEquality().equals(other.errorCode, errorCode) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorCode),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_RemoteResponseErrorCopyWith<T, _$_RemoteResponseError<T>> get copyWith =>
      __$$_RemoteResponseErrorCopyWithImpl<T, _$_RemoteResponseError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(int errorCode, String errorMessage) error,
    required TResult Function() notConnected,
  }) {
    return error(errorCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(int errorCode, String errorMessage)? error,
    TResult Function()? notConnected,
  }) {
    return error?.call(errorCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(int errorCode, String errorMessage)? error,
    TResult Function()? notConnected,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorCode, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataResponseSuccess<T> value) success,
    required TResult Function(_RemoteResponseError<T> value) error,
    required TResult Function(_NoInternetConnection<T> value) notConnected,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataResponseSuccess<T> value)? success,
    TResult Function(_RemoteResponseError<T> value)? error,
    TResult Function(_NoInternetConnection<T> value)? notConnected,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataResponseSuccess<T> value)? success,
    TResult Function(_RemoteResponseError<T> value)? error,
    TResult Function(_NoInternetConnection<T> value)? notConnected,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RemoteResponseError<T> extends DataResponse<T> {
  const factory _RemoteResponseError(
          final int errorCode, final String errorMessage) =
      _$_RemoteResponseError<T>;
  const _RemoteResponseError._() : super._();

  int get errorCode => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_RemoteResponseErrorCopyWith<T, _$_RemoteResponseError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoInternetConnectionCopyWith<T, $Res> {
  factory _$$_NoInternetConnectionCopyWith(_$_NoInternetConnection<T> value,
          $Res Function(_$_NoInternetConnection<T>) then) =
      __$$_NoInternetConnectionCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_NoInternetConnectionCopyWithImpl<T, $Res>
    extends _$DataResponseCopyWithImpl<T, $Res>
    implements _$$_NoInternetConnectionCopyWith<T, $Res> {
  __$$_NoInternetConnectionCopyWithImpl(_$_NoInternetConnection<T> _value,
      $Res Function(_$_NoInternetConnection<T>) _then)
      : super(_value, (v) => _then(v as _$_NoInternetConnection<T>));

  @override
  _$_NoInternetConnection<T> get _value =>
      super._value as _$_NoInternetConnection<T>;
}

/// @nodoc

class _$_NoInternetConnection<T> extends _NoInternetConnection<T> {
  const _$_NoInternetConnection() : super._();

  @override
  String toString() {
    return 'DataResponse<$T>.notConnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoInternetConnection<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(int errorCode, String errorMessage) error,
    required TResult Function() notConnected,
  }) {
    return notConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(int errorCode, String errorMessage)? error,
    TResult Function()? notConnected,
  }) {
    return notConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(int errorCode, String errorMessage)? error,
    TResult Function()? notConnected,
    required TResult orElse(),
  }) {
    if (notConnected != null) {
      return notConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataResponseSuccess<T> value) success,
    required TResult Function(_RemoteResponseError<T> value) error,
    required TResult Function(_NoInternetConnection<T> value) notConnected,
  }) {
    return notConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataResponseSuccess<T> value)? success,
    TResult Function(_RemoteResponseError<T> value)? error,
    TResult Function(_NoInternetConnection<T> value)? notConnected,
  }) {
    return notConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataResponseSuccess<T> value)? success,
    TResult Function(_RemoteResponseError<T> value)? error,
    TResult Function(_NoInternetConnection<T> value)? notConnected,
    required TResult orElse(),
  }) {
    if (notConnected != null) {
      return notConnected(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnection<T> extends DataResponse<T> {
  const factory _NoInternetConnection() = _$_NoInternetConnection<T>;
  const _NoInternetConnection._() : super._();
}
