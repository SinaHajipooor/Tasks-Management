import 'package:bloc_app/navigation/drawer/app_drawer.dart';
import 'package:bloc_app/widgets/tasks/task_counter.dart';
import '../../app/imports/app_imports.dart';
import '../../widgets/tasks/tasks_list.dart';

class DeletedTasksScreen extends StatelessWidget {
  static const routeName = '/deleted-tasks-screen';
  const DeletedTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Text('فعالیت‌های حذف شده', style: theme.bodyMedium!.copyWith(fontSize: 13)),
                Visibility(visible: state.removedTasks.isNotEmpty, child: TaskCounter(count: state.removedTasks.length)),
              ],
            ),
            elevation: 1,
            centerTitle: true,
          ),
          drawer: const AppDrawer(),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: TasksList(tasksList: state.removedTasks)),
              ],
            ),
          ),
        );
      },
    );
  }
}
