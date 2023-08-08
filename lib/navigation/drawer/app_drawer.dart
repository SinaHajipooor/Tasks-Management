import 'package:bloc_app/app/imports/app_imports.dart';
import 'package:bloc_app/screens/tasks/deleted_tasks_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return Drawer(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Stack(
                  children: [
                    UserAccountsDrawerHeader(
                      onDetailsPressed: () {},
                      decoration: BoxDecoration(color: state.isLight ? Colors.blue[400] : Theme.of(context).appBarTheme.backgroundColor),
                      accountName: const Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text(
                          "سیناحاجی‌پور",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      accountEmail: Padding(
                        padding: EdgeInsets.zero,
                        child: Text(
                          "+98 9155613393",
                          textDirection: TextDirection.ltr,
                          style: theme.textTheme.bodyMedium!.apply(color: Colors.white),
                        ),
                      ),
                      currentAccountPicture: InkWell(
                        onTap: () {},
                        child: const CircleAvatar(
                          backgroundImage: AssetImage("assets/images/avatar.png"),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 16.0,
                      left: 12.0,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        transitionBuilder: (Widget child, Animation<double> animation) {
                          final offsetAnimation = Tween<Offset>(
                            begin: const Offset(1, 0),
                            end: Offset.zero,
                          ).animate(animation);
                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                        child: BlocBuilder<ThemeBloc, ThemeState>(
                          builder: (context, state) {
                            return InkWell(
                              onTap: () {
                                context.read<ThemeBloc>().add(state.isLight ? swithToDarkMode() : swithToLightMode());
                              },
                              child: Image.asset(
                                state.isLight ? 'assets/images/icons/night.png' : 'assets/images/icons/sun.png',
                                color: Colors.white,
                                width: 30,
                                height: 30,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                BlocBuilder<TasksBloc, TasksState>(
                  builder: (context, state) {
                    return ListTile(
                      onTap: () => Navigator.of(context).pushReplacementNamed(TasksListScreen.routeName),
                      leading: const Icon(Icons.folder_special, size: 20),
                      title: const Text('فعالیت‌ها', style: TextStyle(fontSize: 13)),
                      trailing: Visibility(visible: state.allTasks.isNotEmpty, child: Text('${state.allTasks.length}', style: const TextStyle(fontSize: 14))),
                    );
                  },
                ),
                BlocBuilder<TasksBloc, TasksState>(
                  builder: (context, state) {
                    return ListTile(
                      onTap: () => Navigator.of(context).pushReplacementNamed(DeletedTasksScreen.routeName),
                      leading: const Icon(Icons.delete, size: 20),
                      title: const Text('حذف شده‌ها', style: TextStyle(fontSize: 13)),
                      trailing: Visibility(visible: state.removedTasks.isNotEmpty, child: Text('${state.removedTasks.length}', style: const TextStyle(fontSize: 14))),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
