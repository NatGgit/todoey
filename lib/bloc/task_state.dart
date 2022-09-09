part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState({
    required List<Task> tasks,
  }) = _TaskState;

  factory TaskState.initial() => const TaskState(
        tasks: [],
      );
}
