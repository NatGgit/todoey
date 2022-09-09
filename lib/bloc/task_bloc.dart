import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todoey_flutter/models/task.dart';

part 'task_bloc.freezed.dart';
part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskState.initial()) {
    on<AddTaskEvent>((event, emit) {
      final tasks = List<Task>.from(state.tasks);
      tasks.add(event.task);
      emit(TaskState(tasks: tasks));
    });
    on<DeleteTaskEvent>((event, emit) {
      final tasks = state.tasks;
      tasks.remove(event.task);
      emit(TaskState(tasks: tasks));
    });
  }
}
