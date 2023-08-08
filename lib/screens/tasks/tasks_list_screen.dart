import 'package:bloc_app/models/task.dart';
import 'package:bloc_app/navigation/drawer/app_drawer.dart';
import 'package:bloc_app/widgets/tasks/task_counter.dart';
import 'package:bloc_app/widgets/tasks/task_modal.dart';
import 'package:bloc_app/widgets/tasks/tasks_list.dart';
import '../../app/imports/app_imports.dart';

// ignore: must_be_immutable
class TasksListScreen extends StatelessWidget {
// feilds
  static const routeName = '/tasks-list-screen';
  TextEditingController titleController = TextEditingController();

  // constructor
  TasksListScreen({super.key});

// methods
  void _addTask(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return const TaskModal();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        List<Task> tasksList = state.allTasks;
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            title: Row(
              children: [
                const Text('فعالیت‌های شما', style: TextStyle(fontSize: 14)),
                Visibility(visible: state.allTasks.isNotEmpty, child: TaskCounter(count: state.allTasks.length)),
              ],
            ),
          ),
          drawer: const AppDrawer(),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: TasksList(tasksList: tasksList)),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _addTask(context),
            tooltip: 'افزودن',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
