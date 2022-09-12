import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoey_flutter/bloc/task_bloc.dart';

import '../constants.dart';
import '../widgets/add_task_widget.dart';
import '../widgets/task_checkbox.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: appBlue,
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.black54.withOpacity(0.0),
            context: context,
            isScrollControlled: true,
            builder: ((context) => const AddTaskWidget()),
          );
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      backgroundColor: appBlue,
      body: BlocBuilder<TaskBloc, TaskState>(
        builder: (context, state) {
          return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.list,
                            color: appBlue,
                            size: 45,
                          ),
                        ),
                      ),
                      const Text(
                        'Todoey',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '${state.tasks.length} tasks',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    constraints: const BoxConstraints.expand(),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: state.tasks.isEmpty
                          ? Text(
                              'Add some tasks here!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: appBlue,
                                fontSize: 20,
                              ),
                            )
                          : ListView.builder(
                              itemCount: state.tasks.length,
                              itemBuilder: ((_, index) {
                                final task = state.tasks[index];
                                return TaskCheckbox(
                                  taskName: task.name,
                                  isDone: task.isDone,
                                  toggleCallback: (_) {
                                    setState(() {
                                      task.toggleDone();
                                    });
                                  },
                                  deleteCallback: () {
                                    context
                                        .read<TaskBloc>()
                                        .add(DeleteTaskEvent(task: task));
                                  },
                                );
                              }),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
