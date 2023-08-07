import 'app/imports/app_imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksBloc(),
      child: MaterialApp(
        title: 'Tasks Management',
        debugShowCheckedModeBanner: false,
        locale: const Locale('fa', 'IR'),
        localizationsDelegates: appLocalizations,
        supportedLocales: appSupportedLocales,
        theme: ThemeData(
          fontFamily: 'YekanBakh',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
        routes: appRoutes,
      ),
    );
  }
}
