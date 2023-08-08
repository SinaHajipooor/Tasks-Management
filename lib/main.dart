import 'package:bloc_app/helpers/theme_helper.dart';

import 'app/imports/app_imports.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TasksBloc()),
        BlocProvider(create: (context) => ThemeBloc()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Tasks Management',
            debugShowCheckedModeBanner: false,
            locale: const Locale('fa', 'IR'),
            localizationsDelegates: appLocalizations,
            supportedLocales: appSupportedLocales,
            theme: state.isLight ? ThemeHelper().getLightTheme() : ThemeHelper().getDarkTheme(),
            home: const SplashScreen(),
            routes: appRoutes,
          );
        },
      ),
    );
  }
}
