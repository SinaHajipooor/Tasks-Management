import 'package:flutter/material.dart';

class DeletedTasksScreen extends StatelessWidget {
  static const routeName = '/deleted-tasks-screen';
  const DeletedTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('فعالیت‌های حذف شده'),
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
    );
  }
}
