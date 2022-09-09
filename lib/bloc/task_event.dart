part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.addTask({required Task task}) = AddTaskEvent;
  const factory TaskEvent.deleteTask({required Task task}) = DeleteTaskEvent;
}
