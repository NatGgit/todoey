import 'package:flutter/material.dart';
import 'package:todoey_flutter/constants.dart';

class AddTaskWidget extends StatelessWidget {
  final void Function(String) addTaskCallback;
  const AddTaskWidget({
    Key? key,
    required this.addTaskCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? newTask;

    return Container(
      padding: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
          bottom: MediaQuery.of(context).viewInsets.bottom),
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
                  addTaskCallback(newTask!);
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
