import 'package:flutter/material.dart';

class MyThemes {
  // Ligth theme data
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,

    appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromRGBO(10, 182, 171, 100),
      foregroundColor: Colors.white, // icons/text
      elevation: 0,
    ),

    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(),
  );

  // dark theme data
  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
  );
}
