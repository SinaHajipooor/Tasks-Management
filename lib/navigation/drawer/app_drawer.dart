import 'package:bloc_app/app/imports/app_imports.dart';
import 'package:bloc_app/screens/tasks/deleted_tasks_screen.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Stack(
                children: [
                  UserAccountsDrawerHeader(
                    onDetailsPressed: () {},
                    decoration: BoxDecoration(color: Colors.purple[400]),
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
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/icons/night.png',
                          color: Colors.white,
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                onTap: () => Navigator.of(context).pushReplacementNamed(TasksListScreen.routeName),
                leading: const Icon(Icons.folder_special, size: 20),
                title: const Text('مدیریت فعالیت‌ها', style: TextStyle(fontSize: 13)),
              ),
              ListTile(
                onTap: () => Navigator.of(context).pushReplacementNamed(DeletedTasksScreen.routeName),
                leading: const Icon(Icons.delete, size: 20),
                title: const Text('حذف شده‌ها', style: TextStyle(fontSize: 13)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
