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

  bool get forceUpdate;
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

  String get query;
  @JsonKey(ignore: true)
  _$$SearchEventCopyWith<_$SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodosScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<TodoEntity> todos) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<TodoEntity> todos)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<TodoEntity> todos)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosScreenStateLoading value) loading,
    required TResult Function(TodosScreenStateEmpty value) empty,
    required TResult Function(TodosScreenStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateEmpty value)? empty,
    TResult Function(TodosScreenStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateEmpty value)? empty,
    TResult Function(TodosScreenStateData value)? data,
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
  const _$TodosScreenStateLoading() : super._();

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
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<TodoEntity> todos) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<TodoEntity> todos)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<TodoEntity> todos)? data,
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
    required TResult Function(TodosScreenStateLoading value) loading,
    required TResult Function(TodosScreenStateEmpty value) empty,
    required TResult Function(TodosScreenStateData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateEmpty value)? empty,
    TResult Function(TodosScreenStateData value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateEmpty value)? empty,
    TResult Function(TodosScreenStateData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TodosScreenStateLoading extends TodosScreenState {
  const factory TodosScreenStateLoading() = _$TodosScreenStateLoading;
  const TodosScreenStateLoading._() : super._();
}

/// @nodoc
abstract class _$$TodosScreenStateEmptyCopyWith<$Res> {
  factory _$$TodosScreenStateEmptyCopyWith(_$TodosScreenStateEmpty value,
          $Res Function(_$TodosScreenStateEmpty) then) =
      __$$TodosScreenStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodosScreenStateEmptyCopyWithImpl<$Res>
    extends _$TodosScreenStateCopyWithImpl<$Res>
    implements _$$TodosScreenStateEmptyCopyWith<$Res> {
  __$$TodosScreenStateEmptyCopyWithImpl(_$TodosScreenStateEmpty _value,
      $Res Function(_$TodosScreenStateEmpty) _then)
      : super(_value, (v) => _then(v as _$TodosScreenStateEmpty));

  @override
  _$TodosScreenStateEmpty get _value => super._value as _$TodosScreenStateEmpty;
}

/// @nodoc

class _$TodosScreenStateEmpty extends TodosScreenStateEmpty {
  const _$TodosScreenStateEmpty() : super._();

  @override
  String toString() {
    return 'TodosScreenState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodosScreenStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<TodoEntity> todos) data,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<TodoEntity> todos)? data,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<TodoEntity> todos)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosScreenStateLoading value) loading,
    required TResult Function(TodosScreenStateEmpty value) empty,
    required TResult Function(TodosScreenStateData value) data,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateEmpty value)? empty,
    TResult Function(TodosScreenStateData value)? data,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateEmpty value)? empty,
    TResult Function(TodosScreenStateData value)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class TodosScreenStateEmpty extends TodosScreenState {
  const factory TodosScreenStateEmpty() = _$TodosScreenStateEmpty;
  const TodosScreenStateEmpty._() : super._();
}

/// @nodoc
abstract class _$$TodosScreenStateDataCopyWith<$Res> {
  factory _$$TodosScreenStateDataCopyWith(_$TodosScreenStateData value,
          $Res Function(_$TodosScreenStateData) then) =
      __$$TodosScreenStateDataCopyWithImpl<$Res>;
  $Res call({List<TodoEntity> todos});
}

/// @nodoc
class __$$TodosScreenStateDataCopyWithImpl<$Res>
    extends _$TodosScreenStateCopyWithImpl<$Res>
    implements _$$TodosScreenStateDataCopyWith<$Res> {
  __$$TodosScreenStateDataCopyWithImpl(_$TodosScreenStateData _value,
      $Res Function(_$TodosScreenStateData) _then)
      : super(_value, (v) => _then(v as _$TodosScreenStateData));

  @override
  _$TodosScreenStateData get _value => super._value as _$TodosScreenStateData;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_$TodosScreenStateData(
      todos: todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ));
  }
}

/// @nodoc

class _$TodosScreenStateData extends TodosScreenStateData {
  const _$TodosScreenStateData({final List<TodoEntity> todos = const []})
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
    return 'TodosScreenState.data(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosScreenStateData &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  _$$TodosScreenStateDataCopyWith<_$TodosScreenStateData> get copyWith =>
      __$$TodosScreenStateDataCopyWithImpl<_$TodosScreenStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<TodoEntity> todos) data,
  }) {
    return data(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<TodoEntity> todos)? data,
  }) {
    return data?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<TodoEntity> todos)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosScreenStateLoading value) loading,
    required TResult Function(TodosScreenStateEmpty value) empty,
    required TResult Function(TodosScreenStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateEmpty value)? empty,
    TResult Function(TodosScreenStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosScreenStateLoading value)? loading,
    TResult Function(TodosScreenStateEmpty value)? empty,
    TResult Function(TodosScreenStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class TodosScreenStateData extends TodosScreenState {
  const factory TodosScreenStateData({final List<TodoEntity> todos}) =
      _$TodosScreenStateData;
  const TodosScreenStateData._() : super._();

  List<TodoEntity> get todos;
  @JsonKey(ignore: true)
  _$$TodosScreenStateDataCopyWith<_$TodosScreenStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
