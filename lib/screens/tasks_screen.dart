import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

import '../constants.dart';
import '../widgets/add_task_widget.dart';
import '../widgets/task_checkbox.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> taskList = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: appBlue,
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.black54.withOpacity(0.0),
              context: context,
              builder: ((context) => AddTaskWidget(
                    addTaskCallback: (String? newTaskName) => setState(() {
                      taskList.add(Task(name: newTaskName!));
                    }),
                  )));
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      backgroundColor: appBlue,
      body: SafeArea(
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
                    '${taskList.length} tasks',
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
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: ListView.builder(
                    itemCount: taskList.length,
                    itemBuilder: ((_, index) {
                      final task = taskList[index];
                      return TaskCheckbox(
                        taskName: task.name,
                        isDone: task.isDone,
                        toggleCallback: (value) {
                          setState(() {
                            task.toggleDone();
                          });
                        },
                      );
                    }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
