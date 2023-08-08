import 'package:bloc_app/navigation/drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class DeletedTasksScreen extends StatelessWidget {
  static const routeName = '/deleted-tasks-screen';
  const DeletedTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text('فعالیت‌های حذف شده', style: TextStyle(fontSize: 14)),
          ],
        ),
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      drawer: const AppDrawer(),
    );
  }
}
