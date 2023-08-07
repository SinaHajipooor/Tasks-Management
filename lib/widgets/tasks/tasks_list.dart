// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc_app/widgets/tasks/task_item.dart';
import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  final List tasksList;
  const TasksList({
    Key? key,
    required this.tasksList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasksList.length,
      itemBuilder: (context, index) {
        var task = tasksList[index];
        return TaskItem(task: task);
      },
    );
  }
}
