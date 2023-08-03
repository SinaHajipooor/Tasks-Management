import 'package:bloc_app/screens/root/splash_screen.dart';
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
      title: 'Tasks Management',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
        TasksListScreen.routeName: (context) => const TasksListScreen(),
      },
    );
  }
}
