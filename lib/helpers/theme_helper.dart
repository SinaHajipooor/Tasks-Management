import 'package:flutter/material.dart';

enum ThemeModeType { light, dark }

class ThemeHelper with ChangeNotifier {
  ThemeData getLightTheme() {
    return ThemeData(
      fontFamily: 'YekanBakh',
      primarySwatch: Colors.blue,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      dialogBackgroundColor: Colors.white,
      bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),
      textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 18),
        titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        titleSmall: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(fontSize: 15),
        bodyMedium: TextStyle(fontSize: 12),
        bodySmall: TextStyle(fontSize: 11),
      ),
      popupMenuTheme: const PopupMenuThemeData(color: Colors.white),
      appBarTheme: const AppBarTheme(
        toolbarTextStyle: TextStyle(color: Colors.black),
        color: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      cardTheme: const CardTheme(
        color: Colors.white,
      ),
    );
  }

  ThemeData getDarkTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: 'YekanBakh',
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        toolbarTextStyle: TextStyle(color: Colors.white),
        color: Color.fromARGB(255, 41, 46, 54),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 18),
        titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        titleSmall: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(fontSize: 15),
        bodyMedium: TextStyle(fontSize: 12),
        bodySmall: TextStyle(fontSize: 11),
      ),
      dialogBackgroundColor: const Color.fromARGB(255, 41, 46, 54),
      bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Color.fromARGB(255, 41, 46, 54)),
      scaffoldBackgroundColor: const Color.fromARGB(255, 41, 46, 54),
      popupMenuTheme: const PopupMenuThemeData(color: Color.fromARGB(255, 41, 46, 54)),
      cardTheme: const CardTheme(
        color: Color.fromARGB(255, 46, 52, 64),
      ),
    );
  }
}

class MyThemeModel with ChangeNotifier {
  ThemeModeType _themeMode = ThemeModeType.light;

  ThemeMode get themeMode => _themeMode == ThemeModeType.light ? ThemeMode.light : ThemeMode.dark;

  void toggleTheme() {
    _themeMode = _themeMode == ThemeModeType.light ? ThemeModeType.dark : ThemeModeType.light;
    notifyListeners();
  }
}
