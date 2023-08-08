import 'package:bloc_app/screens/tasks/deleted_tasks_screen.dart';

import '../imports/app_imports.dart';

final Map<String, WidgetBuilder> appRoutes = {
  TasksListScreen.routeName: (context) => TasksListScreen(),
  DeletedTasksScreen.routeName: (context) => DeletedTasksScreen(),
};
