import 'package:bloc_app/screens/root/home_screen.dart';
import 'package:bloc_app/screens/tasks/tasks_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      routes: {
        TasksListScreen.routeName: (context) => const TasksListScreen(),
      },
    );
  }
}
