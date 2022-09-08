import 'package:flutter/material.dart';
import 'package:todoey_flutter/constants.dart';

class TaskCheckbox extends StatelessWidget {
  final String taskName;
  final bool isDone;
  final Function(bool?)? toggleCallback;

  const TaskCheckbox({
    Key? key,
    required this.taskName,
    required this.isDone,
    required this.toggleCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            taskName,
            style: TextStyle(
              fontSize: 20,
              decoration: isDone ? TextDecoration.lineThrough : null,
            ),
          ),
        ),
        Checkbox(
          activeColor: appBlue,
          value: isDone,
          onChanged: toggleCallback,
        ),
      ],
    );
  }
}
