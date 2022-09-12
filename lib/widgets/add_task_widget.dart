import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoey_flutter/bloc/task_bloc.dart';
import 'package:todoey_flutter/constants.dart';
import 'package:todoey_flutter/models/task.dart';

class AddTaskWidget extends StatelessWidget {
  const AddTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String? newTask;

    return Container(
      height: (MediaQuery.of(context).size.height +
              MediaQuery.of(context).viewInsets.bottom) /
          2,
      padding: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
          bottom: MediaQuery.of(context).viewInsets.bottom == 0
              ? 30
              : MediaQuery.of(context).viewInsets.bottom),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: appBlue, fontSize: 30),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: appBlue!, width: 3.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: appBlue!, width: 3.0),
                ),
              ),
              onChanged: (value) => newTask = value,
            ),
            const SizedBox(
              height: 30,
            ),
            Material(
              color: appBlue,
              child: TextButton(
                onPressed: () {
                  context.read<TaskBloc>().add(
                        AddTaskEvent(
                          task: Task(
                            name: newTask!,
                            id: DateTime.now().millisecondsSinceEpoch,
                          ),
                        ),
                      );
                  Navigator.pop(context);
                },
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
