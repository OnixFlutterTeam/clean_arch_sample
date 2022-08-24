// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'default_api_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DefaultApiError _$DefaultApiErrorFromJson(Map<String, dynamic> json) {
  return _DefaultApiError.fromJson(json);
}

/// @nodoc
mixin _$DefaultApiError {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultApiErrorCopyWith<DefaultApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultApiErrorCopyWith<$Res> {
  factory $DefaultApiErrorCopyWith(
          DefaultApiError value, $Res Function(DefaultApiError) then) =
      _$DefaultApiErrorCopyWithImpl<$Res>;
  $Res call({String name, String code});
}

/// @nodoc
class _$DefaultApiErrorCopyWithImpl<$Res>
    implements $DefaultApiErrorCopyWith<$Res> {
  _$DefaultApiErrorCopyWithImpl(this._value, this._then);

  final DefaultApiError _value;
  // ignore: unused_field
  final $Res Function(DefaultApiError) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DefaultApiErrorCopyWith<$Res>
    implements $DefaultApiErrorCopyWith<$Res> {
  factory _$$_DefaultApiErrorCopyWith(
          _$_DefaultApiError value, $Res Function(_$_DefaultApiError) then) =
      __$$_DefaultApiErrorCopyWithImpl<$Res>;
  @override
  $Res call({String name, String code});
}

/// @nodoc
class __$$_DefaultApiErrorCopyWithImpl<$Res>
    extends _$DefaultApiErrorCopyWithImpl<$Res>
    implements _$$_DefaultApiErrorCopyWith<$Res> {
  __$$_DefaultApiErrorCopyWithImpl(
      _$_DefaultApiError _value, $Res Function(_$_DefaultApiError) _then)
      : super(_value, (v) => _then(v as _$_DefaultApiError));

  @override
  _$_DefaultApiError get _value => super._value as _$_DefaultApiError;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_DefaultApiError(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DefaultApiError implements _DefaultApiError {
  const _$_DefaultApiError({required this.name, required this.code});

  factory _$_DefaultApiError.fromJson(Map<String, dynamic> json) =>
      _$$_DefaultApiErrorFromJson(json);

  @override
  final String name;
  @override
  final String code;

  @override
  String toString() {
    return 'DefaultApiError(name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefaultApiError &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$_DefaultApiErrorCopyWith<_$_DefaultApiError> get copyWith =>
      __$$_DefaultApiErrorCopyWithImpl<_$_DefaultApiError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefaultApiErrorToJson(
      this,
    );
  }
}

abstract class _DefaultApiError implements DefaultApiError {
  const factory _DefaultApiError(
      {required final String name,
      required final String code}) = _$_DefaultApiError;

  factory _DefaultApiError.fromJson(Map<String, dynamic> json) =
      _$_DefaultApiError.fromJson;

  @override
  String get name;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_DefaultApiErrorCopyWith<_$_DefaultApiError> get copyWith =>
      throw _privateConstructorUsedError;
}
