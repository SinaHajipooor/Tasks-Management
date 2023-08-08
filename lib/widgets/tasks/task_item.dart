import 'package:bloc_app/blocs/exports/bloc_exports.dart';
import 'package:bloc_app/models/task.dart';
import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  const TaskItem({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.title,
        style: TextStyle(decoration: task.isDone! ? TextDecoration.lineThrough : null),
      ),
      onLongPress: () => context.read<TasksBloc>().add(DeleteTask(task: task)),
      trailing: Checkbox(
        value: task.isDone,
        onChanged: (value) {
          context.read<TasksBloc>().add(UpdateTask(task: task));
        },
      ),
    );
  }
}
