import 'package:bloc_app/models/task.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TasksListScreen extends StatelessWidget {
  static const routeName = '/tasks-list-screen';
  List<Task> tasksList = [
    Task(title: 'فعالیت اول'),
    Task(title: 'فعالیت دوم'),
    Task(title: 'فعالیت سوم'),
  ];
  TasksListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text('فعالیت‌های شما'),
      ),
    );
  }
}
