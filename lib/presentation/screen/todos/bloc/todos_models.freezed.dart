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
    required TResult Function() getTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool forceUpdate)? getTodos,
    TResult? Function(String query)? onSearch,
    TResult? Function()? getTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool forceUpdate)? getTodos,
    TResult Function(String query)? onSearch,
    TResult Function()? getTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodosEvent value) getTodos,
    required TResult Function(SearchEvent value) onSearch,
    required TResult Function(GetTimeEvent value) getTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodosEvent value)? getTodos,
    TResult? Function(SearchEvent value)? onSearch,
    TResult? Function(GetTimeEvent value)? getTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodosEvent value)? getTodos,
    TResult Function(SearchEvent value)? onSearch,
    TResult Function(GetTimeEvent value)? getTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosScreenEventCopyWith<$Res> {
  factory $TodosScreenEventCopyWith(
          TodosScreenEvent value, $Res Function(TodosScreenEvent) then) =
      _$TodosScreenEventCopyWithImpl<$Res, TodosScreenEvent>;
}

/// @nodoc
class _$TodosScreenEventCopyWithImpl<$Res, $Val extends TodosScreenEvent>
    implements $TodosScreenEventCopyWith<$Res> {
  _$TodosScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTodosEventCopyWith<$Res> {
  factory _$$GetTodosEventCopyWith(
          _$GetTodosEvent value, $Res Function(_$GetTodosEvent) then) =
      __$$GetTodosEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool forceUpdate});
}

/// @nodoc
class __$$GetTodosEventCopyWithImpl<$Res>
    extends _$TodosScreenEventCopyWithImpl<$Res, _$GetTodosEvent>
    implements _$$GetTodosEventCopyWith<$Res> {
  __$$GetTodosEventCopyWithImpl(
      _$GetTodosEvent _value, $Res Function(_$GetTodosEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forceUpdate = null,
  }) {
    return _then(_$GetTodosEvent(
      forceUpdate: null == forceUpdate
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
            (identical(other.forceUpdate, forceUpdate) ||
                other.forceUpdate == forceUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forceUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTodosEventCopyWith<_$GetTodosEvent> get copyWith =>
      __$$GetTodosEventCopyWithImpl<_$GetTodosEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool forceUpdate) getTodos,
    required TResult Function(String query) onSearch,
    required TResult Function() getTime,
  }) {
    return getTodos(forceUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool forceUpdate)? getTodos,
    TResult? Function(String query)? onSearch,
    TResult? Function()? getTime,
  }) {
    return getTodos?.call(forceUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool forceUpdate)? getTodos,
    TResult Function(String query)? onSearch,
    TResult Function()? getTime,
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
    required TResult Function(GetTimeEvent value) getTime,
  }) {
    return getTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodosEvent value)? getTodos,
    TResult? Function(SearchEvent value)? onSearch,
    TResult? Function(GetTimeEvent value)? getTime,
  }) {
    return getTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodosEvent value)? getTodos,
    TResult Function(SearchEvent value)? onSearch,
    TResult Function(GetTimeEvent value)? getTime,
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
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchEventCopyWithImpl<$Res>
    extends _$TodosScreenEventCopyWithImpl<$Res, _$SearchEvent>
    implements _$$SearchEventCopyWith<$Res> {
  __$$SearchEventCopyWithImpl(
      _$SearchEvent _value, $Res Function(_$SearchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchEvent(
      query: null == query
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
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchEventCopyWith<_$SearchEvent> get copyWith =>
      __$$SearchEventCopyWithImpl<_$SearchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool forceUpdate) getTodos,
    required TResult Function(String query) onSearch,
    required TResult Function() getTime,
  }) {
    return onSearch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool forceUpdate)? getTodos,
    TResult? Function(String query)? onSearch,
    TResult? Function()? getTime,
  }) {
    return onSearch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool forceUpdate)? getTodos,
    TResult Function(String query)? onSearch,
    TResult Function()? getTime,
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
    required TResult Function(GetTimeEvent value) getTime,
  }) {
    return onSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodosEvent value)? getTodos,
    TResult? Function(SearchEvent value)? onSearch,
    TResult? Function(GetTimeEvent value)? getTime,
  }) {
    return onSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodosEvent value)? getTodos,
    TResult Function(SearchEvent value)? onSearch,
    TResult Function(GetTimeEvent value)? getTime,
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
abstract class _$$GetTimeEventCopyWith<$Res> {
  factory _$$GetTimeEventCopyWith(
          _$GetTimeEvent value, $Res Function(_$GetTimeEvent) then) =
      __$$GetTimeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTimeEventCopyWithImpl<$Res>
    extends _$TodosScreenEventCopyWithImpl<$Res, _$GetTimeEvent>
    implements _$$GetTimeEventCopyWith<$Res> {
  __$$GetTimeEventCopyWithImpl(
      _$GetTimeEvent _value, $Res Function(_$GetTimeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTimeEvent implements GetTimeEvent {
  _$GetTimeEvent();

  @override
  String toString() {
    return 'TodosScreenEvent.getTime()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTimeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool forceUpdate) getTodos,
    required TResult Function(String query) onSearch,
    required TResult Function() getTime,
  }) {
    return getTime();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool forceUpdate)? getTodos,
    TResult? Function(String query)? onSearch,
    TResult? Function()? getTime,
  }) {
    return getTime?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool forceUpdate)? getTodos,
    TResult Function(String query)? onSearch,
    TResult Function()? getTime,
    required TResult orElse(),
  }) {
    if (getTime != null) {
      return getTime();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodosEvent value) getTodos,
    required TResult Function(SearchEvent value) onSearch,
    required TResult Function(GetTimeEvent value) getTime,
  }) {
    return getTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodosEvent value)? getTodos,
    TResult? Function(SearchEvent value)? onSearch,
    TResult? Function(GetTimeEvent value)? getTime,
  }) {
    return getTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodosEvent value)? getTodos,
    TResult Function(SearchEvent value)? onSearch,
    TResult Function(GetTimeEvent value)? getTime,
    required TResult orElse(),
  }) {
    if (getTime != null) {
      return getTime(this);
    }
    return orElse();
  }
}

abstract class GetTimeEvent implements TodosScreenEvent {
  factory GetTimeEvent() = _$GetTimeEvent;
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
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<TodoEntity> todos)? data,
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
    TResult? Function(TodosScreenStateLoading value)? loading,
    TResult? Function(TodosScreenStateEmpty value)? empty,
    TResult? Function(TodosScreenStateData value)? data,
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
      _$TodosScreenStateCopyWithImpl<$Res, TodosScreenState>;
}

/// @nodoc
class _$TodosScreenStateCopyWithImpl<$Res, $Val extends TodosScreenState>
    implements $TodosScreenStateCopyWith<$Res> {
  _$TodosScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TodosScreenStateLoadingCopyWith<$Res> {
  factory _$$TodosScreenStateLoadingCopyWith(_$TodosScreenStateLoading value,
          $Res Function(_$TodosScreenStateLoading) then) =
      __$$TodosScreenStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodosScreenStateLoadingCopyWithImpl<$Res>
    extends _$TodosScreenStateCopyWithImpl<$Res, _$TodosScreenStateLoading>
    implements _$$TodosScreenStateLoadingCopyWith<$Res> {
  __$$TodosScreenStateLoadingCopyWithImpl(_$TodosScreenStateLoading _value,
      $Res Function(_$TodosScreenStateLoading) _then)
      : super(_value, _then);
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
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<TodoEntity> todos)? data,
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
    TResult? Function(TodosScreenStateLoading value)? loading,
    TResult? Function(TodosScreenStateEmpty value)? empty,
    TResult? Function(TodosScreenStateData value)? data,
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
    extends _$TodosScreenStateCopyWithImpl<$Res, _$TodosScreenStateEmpty>
    implements _$$TodosScreenStateEmptyCopyWith<$Res> {
  __$$TodosScreenStateEmptyCopyWithImpl(_$TodosScreenStateEmpty _value,
      $Res Function(_$TodosScreenStateEmpty) _then)
      : super(_value, _then);
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
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<TodoEntity> todos)? data,
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
    TResult? Function(TodosScreenStateLoading value)? loading,
    TResult? Function(TodosScreenStateEmpty value)? empty,
    TResult? Function(TodosScreenStateData value)? data,
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
  @useResult
  $Res call({List<TodoEntity> todos});
}

/// @nodoc
class __$$TodosScreenStateDataCopyWithImpl<$Res>
    extends _$TodosScreenStateCopyWithImpl<$Res, _$TodosScreenStateData>
    implements _$$TodosScreenStateDataCopyWith<$Res> {
  __$$TodosScreenStateDataCopyWithImpl(_$TodosScreenStateData _value,
      $Res Function(_$TodosScreenStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$TodosScreenStateData(
      todos: null == todos
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
  @pragma('vm:prefer-inline')
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
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<TodoEntity> todos)? data,
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
    TResult? Function(TodosScreenStateLoading value)? loading,
    TResult? Function(TodosScreenStateEmpty value)? empty,
    TResult? Function(TodosScreenStateData value)? data,
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

/// @nodoc
mixin _$TodosSR {
  String get time => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String time) getTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String time)? getTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String time)? getTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTimeSR value) getTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTimeSR value)? getTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTimeSR value)? getTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodosSRCopyWith<TodosSR> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosSRCopyWith<$Res> {
  factory $TodosSRCopyWith(TodosSR value, $Res Function(TodosSR) then) =
      _$TodosSRCopyWithImpl<$Res, TodosSR>;
  @useResult
  $Res call({String time});
}

/// @nodoc
class _$TodosSRCopyWithImpl<$Res, $Val extends TodosSR>
    implements $TodosSRCopyWith<$Res> {
  _$TodosSRCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetTimeSRCopyWith<$Res> implements $TodosSRCopyWith<$Res> {
  factory _$$_GetTimeSRCopyWith(
          _$_GetTimeSR value, $Res Function(_$_GetTimeSR) then) =
      __$$_GetTimeSRCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String time});
}

/// @nodoc
class __$$_GetTimeSRCopyWithImpl<$Res>
    extends _$TodosSRCopyWithImpl<$Res, _$_GetTimeSR>
    implements _$$_GetTimeSRCopyWith<$Res> {
  __$$_GetTimeSRCopyWithImpl(
      _$_GetTimeSR _value, $Res Function(_$_GetTimeSR) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$_GetTimeSR(
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetTimeSR implements _GetTimeSR {
  _$_GetTimeSR(this.time);

  @override
  final String time;

  @override
  String toString() {
    return 'TodosSR.getTime(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTimeSR &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTimeSRCopyWith<_$_GetTimeSR> get copyWith =>
      __$$_GetTimeSRCopyWithImpl<_$_GetTimeSR>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String time) getTime,
  }) {
    return getTime(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String time)? getTime,
  }) {
    return getTime?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String time)? getTime,
    required TResult orElse(),
  }) {
    if (getTime != null) {
      return getTime(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTimeSR value) getTime,
  }) {
    return getTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTimeSR value)? getTime,
  }) {
    return getTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTimeSR value)? getTime,
    required TResult orElse(),
  }) {
    if (getTime != null) {
      return getTime(this);
    }
    return orElse();
  }
}

abstract class _GetTimeSR implements TodosSR {
  factory _GetTimeSR(final String time) = _$_GetTimeSR;

  @override
  String get time;
  @override
  @JsonKey(ignore: true)
  _$$_GetTimeSRCopyWith<_$_GetTimeSR> get copyWith =>
      throw _privateConstructorUsedError;
}
