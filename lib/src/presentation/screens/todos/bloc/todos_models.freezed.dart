// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todos_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodosScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool forceUpdate) getTodos,
    required TResult Function(String query) onSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool forceUpdate)? getTodos,
    TResult Function(String query)? onSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool forceUpdate)? getTodos,
    TResult Function(String query)? onSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodosEvent value) getTodos,
    required TResult Function(SearchEvent value) onSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetTodosEvent value)? getTodos,
    TResult Function(SearchEvent value)? onSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodosEvent value)? getTodos,
    TResult Function(SearchEvent value)? onSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosScreenEventCopyWith<$Res> {
  factory $TodosScreenEventCopyWith(
          TodosScreenEvent value, $Res Function(TodosScreenEvent) then) =
      _$TodosScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosScreenEventCopyWithImpl<$Res>
    implements $TodosScreenEventCopyWith<$Res> {
  _$TodosScreenEventCopyWithImpl(this._value, this._then);

  final TodosScreenEvent _value;
  // ignore: unused_field
  final $Res Function(TodosScreenEvent) _then;
}

/// @nodoc
abstract class _$$GetTodosEventCopyWith<$Res> {
  factory _$$GetTodosEventCopyWith(
          _$GetTodosEvent value, $Res Function(_$GetTodosEvent) then) =
      __$$GetTodosEventCopyWithImpl<$Res>;
  $Res call({bool forceUpdate});
}

/// @nodoc
class __$$GetTodosEventCopyWithImpl<$Res>
    extends _$TodosScreenEventCopyWithImpl<$Res>
    implements _$$GetTodosEventCopyWith<$Res> {
  __$$GetTodosEventCopyWithImpl(
      _$GetTodosEvent _value, $Res Function(_$GetTodosEvent) _then)
      : super(_value, (v) => _then(v as _$GetTodosEvent));

  @override
  _$GetTodosEvent get _value => super._value as _$GetTodosEvent;

  @override
  $Res call({
    Object? forceUpdate = freezed,
  }) {
    return _then(_$GetTodosEvent(
      forceUpdate: forceUpdate == freezed
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetTodosEvent implements GetTodosEvent {
  _$GetTodosEvent({this.forceUpdate = false});

  @override
  @JsonKey()
  final bool forceUpdate;

  @override
  String toString() {
    return 'TodosScreenEvent.getTodos(forceUpdate: $forceUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTodosEvent &&
            const DeepCollectionEquality()
                .equals(other.forceUpdate, forceUpdate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(forceUpdate));

  @JsonKey(ignore: true)
  @override
  _$$GetTodosEventCopyWith<_$GetTodosEvent> get copyWith =>
      __$$GetTodosEventCopyWithImpl<_$GetTodosEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool forceUpdate) getTodos,
    required TResult Function(String query) onSearch,
  }) {
    return getTodos(forceUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool forceUpdate)? getTodos,
    TResult Function(String query)? onSearch,
  }) {
    return getTodos?.call(forceUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool forceUpdate)? getTodos,
    TResult Function(String query)? onSearch,
    required TResult orElse(),
  }) {
    if (getTodos != null) {
      return getTodos(forceUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodosEvent value) getTodos,
    required TResult Function(SearchEvent value) onSearch,
  }) {
    return getTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetTodosEvent value)? getTodos,
    TResult Function(SearchEvent value)? onSearch,
  }) {
    return getTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodosEvent value)? getTodos,
    TResult Function(SearchEvent value)? onSearch,
    required TResult orElse(),
  }) {
    if (getTodos != null) {
      return getTodos(this);
    }
    return orElse();
  }
}

abstract class GetTodosEvent implements TodosScreenEvent {
  factory GetTodosEvent({final bool forceUpdate}) = _$GetTodosEvent;

  bool get forceUpdate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetTodosEventCopyWith<_$GetTodosEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchEventCopyWith<$Res> {
  factory _$$SearchEventCopyWith(
          _$SearchEvent value, $Res Function(_$SearchEvent) then) =
      __$$SearchEventCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$$SearchEventCopyWithImpl<$Res>
    extends _$TodosScreenEventCopyWithImpl<$Res>
    implements _$$SearchEventCopyWith<$Res> {
  __$$SearchEventCopyWithImpl(
      _$SearchEvent _value, $Res Function(_$SearchEvent) _then)
      : super(_value, (v) => _then(v as _$SearchEvent));

  @override
  _$SearchEvent get _value => super._value as _$SearchEvent;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$SearchEvent(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchEvent implements SearchEvent {
  _$SearchEvent({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'TodosScreenEvent.onSearch(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEvent &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$SearchEventCopyWith<_$SearchEvent> get copyWith =>
      __$$SearchEventCopyWithImpl<_$SearchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool forceUpdate) getTodos,
    required TResult Function(String query) onSearch,
  }) {
    return onSearch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool forceUpdate)? getTodos,
    TResult Function(String query)? onSearch,
  }) {
    return onSearch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool forceUpdate)? getTodos,
    TResult Function(String query)? onSearch,
    required TResult orElse(),
  }) {
    if (onSearch != null) {
      return onSearch(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodosEvent value) getTodos,
    required TResult Function(SearchEvent value) onSearch,
  }) {
    return onSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetTodosEvent value)? getTodos,
    TResult Function(SearchEvent value)? onSearch,
  }) {
    return onSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodosEvent value)? getTodos,
    TResult Function(SearchEvent value)? onSearch,
    required TResult orElse(),
  }) {
    if (onSearch != null) {
      return onSearch(this);
    }
    return orElse();
  }
}

abstract class SearchEvent implements TodosScreenEvent {
  factory SearchEvent({required final String query}) = _$SearchEvent;

  String get query => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SearchEventCopyWith<_$SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodosScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(ResultErrorType errorType, String errorMessage)
        error,
    required TResult Function(List<TodoEntity> todos) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(ResultErrorType errorType, String errorMessage)? error,
    TResult Function(List<TodoEntity> todos)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(ResultErrorType errorType, String errorMessage)? error,
    TResult Function(List<TodoEntity> todos)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosScreenStateIdle value) idle,
    required TResult Function(TodosScreenStateLoading value) loading,
    required TResult Function(TodosScreenStateError value) error,
    required TResult Function(TodosScreenStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosScreenStateIdle value)? idle,
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateError value)? error,
    TResult Function(TodosScreenStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosScreenStateIdle value)? idle,
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateError value)? error,
    TResult Function(TodosScreenStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosScreenStateCopyWith<$Res> {
  factory $TodosScreenStateCopyWith(
          TodosScreenState value, $Res Function(TodosScreenState) then) =
      _$TodosScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosScreenStateCopyWithImpl<$Res>
    implements $TodosScreenStateCopyWith<$Res> {
  _$TodosScreenStateCopyWithImpl(this._value, this._then);

  final TodosScreenState _value;
  // ignore: unused_field
  final $Res Function(TodosScreenState) _then;
}

/// @nodoc
abstract class _$$TodosScreenStateIdleCopyWith<$Res> {
  factory _$$TodosScreenStateIdleCopyWith(_$TodosScreenStateIdle value,
          $Res Function(_$TodosScreenStateIdle) then) =
      __$$TodosScreenStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodosScreenStateIdleCopyWithImpl<$Res>
    extends _$TodosScreenStateCopyWithImpl<$Res>
    implements _$$TodosScreenStateIdleCopyWith<$Res> {
  __$$TodosScreenStateIdleCopyWithImpl(_$TodosScreenStateIdle _value,
      $Res Function(_$TodosScreenStateIdle) _then)
      : super(_value, (v) => _then(v as _$TodosScreenStateIdle));

  @override
  _$TodosScreenStateIdle get _value => super._value as _$TodosScreenStateIdle;
}

/// @nodoc

class _$TodosScreenStateIdle extends TodosScreenStateIdle {
  _$TodosScreenStateIdle() : super._();

  @override
  String toString() {
    return 'TodosScreenState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodosScreenStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(ResultErrorType errorType, String errorMessage)
        error,
    required TResult Function(List<TodoEntity> todos) success,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(ResultErrorType errorType, String errorMessage)? error,
    TResult Function(List<TodoEntity> todos)? success,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(ResultErrorType errorType, String errorMessage)? error,
    TResult Function(List<TodoEntity> todos)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosScreenStateIdle value) idle,
    required TResult Function(TodosScreenStateLoading value) loading,
    required TResult Function(TodosScreenStateError value) error,
    required TResult Function(TodosScreenStateSuccess value) success,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosScreenStateIdle value)? idle,
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateError value)? error,
    TResult Function(TodosScreenStateSuccess value)? success,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosScreenStateIdle value)? idle,
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateError value)? error,
    TResult Function(TodosScreenStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class TodosScreenStateIdle extends TodosScreenState {
  factory TodosScreenStateIdle() = _$TodosScreenStateIdle;
  TodosScreenStateIdle._() : super._();
}

/// @nodoc
abstract class _$$TodosScreenStateLoadingCopyWith<$Res> {
  factory _$$TodosScreenStateLoadingCopyWith(_$TodosScreenStateLoading value,
          $Res Function(_$TodosScreenStateLoading) then) =
      __$$TodosScreenStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodosScreenStateLoadingCopyWithImpl<$Res>
    extends _$TodosScreenStateCopyWithImpl<$Res>
    implements _$$TodosScreenStateLoadingCopyWith<$Res> {
  __$$TodosScreenStateLoadingCopyWithImpl(_$TodosScreenStateLoading _value,
      $Res Function(_$TodosScreenStateLoading) _then)
      : super(_value, (v) => _then(v as _$TodosScreenStateLoading));

  @override
  _$TodosScreenStateLoading get _value =>
      super._value as _$TodosScreenStateLoading;
}

/// @nodoc

class _$TodosScreenStateLoading extends TodosScreenStateLoading {
  _$TodosScreenStateLoading() : super._();

  @override
  String toString() {
    return 'TodosScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosScreenStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(ResultErrorType errorType, String errorMessage)
        error,
    required TResult Function(List<TodoEntity> todos) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(ResultErrorType errorType, String errorMessage)? error,
    TResult Function(List<TodoEntity> todos)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(ResultErrorType errorType, String errorMessage)? error,
    TResult Function(List<TodoEntity> todos)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosScreenStateIdle value) idle,
    required TResult Function(TodosScreenStateLoading value) loading,
    required TResult Function(TodosScreenStateError value) error,
    required TResult Function(TodosScreenStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosScreenStateIdle value)? idle,
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateError value)? error,
    TResult Function(TodosScreenStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosScreenStateIdle value)? idle,
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateError value)? error,
    TResult Function(TodosScreenStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TodosScreenStateLoading extends TodosScreenState {
  factory TodosScreenStateLoading() = _$TodosScreenStateLoading;
  TodosScreenStateLoading._() : super._();
}

/// @nodoc
abstract class _$$TodosScreenStateErrorCopyWith<$Res> {
  factory _$$TodosScreenStateErrorCopyWith(_$TodosScreenStateError value,
          $Res Function(_$TodosScreenStateError) then) =
      __$$TodosScreenStateErrorCopyWithImpl<$Res>;
  $Res call({ResultErrorType errorType, String errorMessage});
}

/// @nodoc
class __$$TodosScreenStateErrorCopyWithImpl<$Res>
    extends _$TodosScreenStateCopyWithImpl<$Res>
    implements _$$TodosScreenStateErrorCopyWith<$Res> {
  __$$TodosScreenStateErrorCopyWithImpl(_$TodosScreenStateError _value,
      $Res Function(_$TodosScreenStateError) _then)
      : super(_value, (v) => _then(v as _$TodosScreenStateError));

  @override
  _$TodosScreenStateError get _value => super._value as _$TodosScreenStateError;

  @override
  $Res call({
    Object? errorType = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$TodosScreenStateError(
      errorType: errorType == freezed
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as ResultErrorType,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TodosScreenStateError extends TodosScreenStateError {
  _$TodosScreenStateError(
      {this.errorType = ResultErrorType.none, this.errorMessage = ''})
      : super._();

  @override
  @JsonKey()
  final ResultErrorType errorType;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'TodosScreenState.error(errorType: $errorType, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosScreenStateError &&
            const DeepCollectionEquality().equals(other.errorType, errorType) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorType),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$TodosScreenStateErrorCopyWith<_$TodosScreenStateError> get copyWith =>
      __$$TodosScreenStateErrorCopyWithImpl<_$TodosScreenStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(ResultErrorType errorType, String errorMessage)
        error,
    required TResult Function(List<TodoEntity> todos) success,
  }) {
    return error(errorType, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(ResultErrorType errorType, String errorMessage)? error,
    TResult Function(List<TodoEntity> todos)? success,
  }) {
    return error?.call(errorType, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(ResultErrorType errorType, String errorMessage)? error,
    TResult Function(List<TodoEntity> todos)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorType, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosScreenStateIdle value) idle,
    required TResult Function(TodosScreenStateLoading value) loading,
    required TResult Function(TodosScreenStateError value) error,
    required TResult Function(TodosScreenStateSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosScreenStateIdle value)? idle,
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateError value)? error,
    TResult Function(TodosScreenStateSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosScreenStateIdle value)? idle,
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateError value)? error,
    TResult Function(TodosScreenStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TodosScreenStateError extends TodosScreenState {
  factory TodosScreenStateError(
      {final ResultErrorType errorType,
      final String errorMessage}) = _$TodosScreenStateError;
  TodosScreenStateError._() : super._();

  ResultErrorType get errorType => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TodosScreenStateErrorCopyWith<_$TodosScreenStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodosScreenStateSuccessCopyWith<$Res> {
  factory _$$TodosScreenStateSuccessCopyWith(_$TodosScreenStateSuccess value,
          $Res Function(_$TodosScreenStateSuccess) then) =
      __$$TodosScreenStateSuccessCopyWithImpl<$Res>;
  $Res call({List<TodoEntity> todos});
}

/// @nodoc
class __$$TodosScreenStateSuccessCopyWithImpl<$Res>
    extends _$TodosScreenStateCopyWithImpl<$Res>
    implements _$$TodosScreenStateSuccessCopyWith<$Res> {
  __$$TodosScreenStateSuccessCopyWithImpl(_$TodosScreenStateSuccess _value,
      $Res Function(_$TodosScreenStateSuccess) _then)
      : super(_value, (v) => _then(v as _$TodosScreenStateSuccess));

  @override
  _$TodosScreenStateSuccess get _value =>
      super._value as _$TodosScreenStateSuccess;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_$TodosScreenStateSuccess(
      todos: todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ));
  }
}

/// @nodoc

class _$TodosScreenStateSuccess extends TodosScreenStateSuccess {
  _$TodosScreenStateSuccess({final List<TodoEntity> todos = const []})
      : _todos = todos,
        super._();

  final List<TodoEntity> _todos;
  @override
  @JsonKey()
  List<TodoEntity> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodosScreenState.success(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosScreenStateSuccess &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  _$$TodosScreenStateSuccessCopyWith<_$TodosScreenStateSuccess> get copyWith =>
      __$$TodosScreenStateSuccessCopyWithImpl<_$TodosScreenStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(ResultErrorType errorType, String errorMessage)
        error,
    required TResult Function(List<TodoEntity> todos) success,
  }) {
    return success(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(ResultErrorType errorType, String errorMessage)? error,
    TResult Function(List<TodoEntity> todos)? success,
  }) {
    return success?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(ResultErrorType errorType, String errorMessage)? error,
    TResult Function(List<TodoEntity> todos)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosScreenStateIdle value) idle,
    required TResult Function(TodosScreenStateLoading value) loading,
    required TResult Function(TodosScreenStateError value) error,
    required TResult Function(TodosScreenStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosScreenStateIdle value)? idle,
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateError value)? error,
    TResult Function(TodosScreenStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosScreenStateIdle value)? idle,
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateError value)? error,
    TResult Function(TodosScreenStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TodosScreenStateSuccess extends TodosScreenState {
  factory TodosScreenStateSuccess({final List<TodoEntity> todos}) =
      _$TodosScreenStateSuccess;
  TodosScreenStateSuccess._() : super._();

  List<TodoEntity> get todos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TodosScreenStateSuccessCopyWith<_$TodosScreenStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
