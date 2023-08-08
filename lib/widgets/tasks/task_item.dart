import 'package:bloc_app/blocs/exports/bloc_exports.dart';
import 'package:bloc_app/models/task.dart';
import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
// feilds
  final Task task;
  // constructor
  const TaskItem({super.key, required this.task});

// this method should delete the task in the tasks list screen but remove the task in deleted tasks screen
  void _removeOrDeleteTask(BuildContext context, Task task) {
    context.read<TasksBloc>().add(task.isDeleted! ? DeleteTask(task: task) : RemoveTask(task: task));
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.startToEnd,
      background: Container(color: task.isDeleted! ? Colors.red : Colors.orange[200]),
      onDismissed: (direction) => _removeOrDeleteTask(context, task),
      child: ListTile(
        title: Text(
          task.title,
          style: TextStyle(decoration: task.isDone! ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: task.isDone,
          onChanged: (value) {
            context.read<TasksBloc>().add(UpdateTask(task: task));
          },
        ),
      ),
    );
  }
}
