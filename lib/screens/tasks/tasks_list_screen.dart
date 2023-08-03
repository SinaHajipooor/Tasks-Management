import 'package:flutter/material.dart';

class TasksListScreen extends StatefulWidget {
  static const routeName = '/tasks-list-screen';
  const TasksListScreen({super.key});

  @override
  State<TasksListScreen> createState() => _TasksListScreenState();
}

class _TasksListScreenState extends State<TasksListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tasks list screen'),
      ),
    );
  }
}
