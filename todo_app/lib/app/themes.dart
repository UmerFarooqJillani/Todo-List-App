import 'package:flutter/material.dart';

class MyThemes {
  // Ligth theme data
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,

    appBarTheme: AppBarTheme(),
    textTheme: const TextTheme(),
    floatingActionButtonTheme: FloatingActionButtonThemeData(),
  );

  // dark theme data
  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
  );
}
