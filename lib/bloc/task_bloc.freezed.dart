// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEvent {
  Task get task => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) addTask,
    required TResult Function(Task task) deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? deleteTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(DeleteTaskEvent value) deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskEventCopyWith<TaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res>;
  $Res call({Task task});
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res> implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  final TaskEvent _value;
  // ignore: unused_field
  final $Res Function(TaskEvent) _then;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_value.copyWith(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc
abstract class _$$AddTaskEventCopyWith<$Res>
    implements $TaskEventCopyWith<$Res> {
  factory _$$AddTaskEventCopyWith(
          _$AddTaskEvent value, $Res Function(_$AddTaskEvent) then) =
      __$$AddTaskEventCopyWithImpl<$Res>;
  @override
  $Res call({Task task});
}

/// @nodoc
class __$$AddTaskEventCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res>
    implements _$$AddTaskEventCopyWith<$Res> {
  __$$AddTaskEventCopyWithImpl(
      _$AddTaskEvent _value, $Res Function(_$AddTaskEvent) _then)
      : super(_value, (v) => _then(v as _$AddTaskEvent));

  @override
  _$AddTaskEvent get _value => super._value as _$AddTaskEvent;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$AddTaskEvent(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$AddTaskEvent implements AddTaskEvent {
  const _$AddTaskEvent({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskEvent.addTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskEvent &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$AddTaskEventCopyWith<_$AddTaskEvent> get copyWith =>
      __$$AddTaskEventCopyWithImpl<_$AddTaskEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) addTask,
    required TResult Function(Task task) deleteTask,
  }) {
    return addTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? deleteTask,
  }) {
    return addTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? deleteTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(DeleteTaskEvent value) deleteTask,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class AddTaskEvent implements TaskEvent {
  const factory AddTaskEvent({required final Task task}) = _$AddTaskEvent;

  @override
  Task get task;
  @override
  @JsonKey(ignore: true)
  _$$AddTaskEventCopyWith<_$AddTaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskEventCopyWith<$Res>
    implements $TaskEventCopyWith<$Res> {
  factory _$$DeleteTaskEventCopyWith(
          _$DeleteTaskEvent value, $Res Function(_$DeleteTaskEvent) then) =
      __$$DeleteTaskEventCopyWithImpl<$Res>;
  @override
  $Res call({Task task});
}

/// @nodoc
class __$$DeleteTaskEventCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res>
    implements _$$DeleteTaskEventCopyWith<$Res> {
  __$$DeleteTaskEventCopyWithImpl(
      _$DeleteTaskEvent _value, $Res Function(_$DeleteTaskEvent) _then)
      : super(_value, (v) => _then(v as _$DeleteTaskEvent));

  @override
  _$DeleteTaskEvent get _value => super._value as _$DeleteTaskEvent;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$DeleteTaskEvent(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$DeleteTaskEvent implements DeleteTaskEvent {
  const _$DeleteTaskEvent({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskEvent.deleteTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskEvent &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$DeleteTaskEventCopyWith<_$DeleteTaskEvent> get copyWith =>
      __$$DeleteTaskEventCopyWithImpl<_$DeleteTaskEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) addTask,
    required TResult Function(Task task) deleteTask,
  }) {
    return deleteTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? deleteTask,
  }) {
    return deleteTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? deleteTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(DeleteTaskEvent value) deleteTask,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class DeleteTaskEvent implements TaskEvent {
  const factory DeleteTaskEvent({required final Task task}) = _$DeleteTaskEvent;

  @override
  Task get task;
  @override
  @JsonKey(ignore: true)
  _$$DeleteTaskEventCopyWith<_$DeleteTaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  List<Task> get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res>;
  $Res call({List<Task> tasks});
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res> implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  final TaskState _value;
  // ignore: unused_field
  final $Res Function(TaskState) _then;

  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc
abstract class _$$_TaskStateCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$$_TaskStateCopyWith(
          _$_TaskState value, $Res Function(_$_TaskState) then) =
      __$$_TaskStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Task> tasks});
}

/// @nodoc
class __$$_TaskStateCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements _$$_TaskStateCopyWith<$Res> {
  __$$_TaskStateCopyWithImpl(
      _$_TaskState _value, $Res Function(_$_TaskState) _then)
      : super(_value, (v) => _then(v as _$_TaskState));

  @override
  _$_TaskState get _value => super._value as _$_TaskState;

  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_$_TaskState(
      tasks: tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$_TaskState implements _TaskState {
  const _$_TaskState({required final List<Task> tasks}) : _tasks = tasks;

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskState(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskState &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  _$$_TaskStateCopyWith<_$_TaskState> get copyWith =>
      __$$_TaskStateCopyWithImpl<_$_TaskState>(this, _$identity);
}

abstract class _TaskState implements TaskState {
  const factory _TaskState({required final List<Task> tasks}) = _$_TaskState;

  @override
  List<Task> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$_TaskStateCopyWith<_$_TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}
