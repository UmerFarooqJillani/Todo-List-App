import 'package:flutter/material.dart';

class MyThemes {
  // Ligth theme data
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    // Prefer ColorScheme in M3:
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF0AB6AB),
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: Colors.white,

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF0AB6AB),
      foregroundColor: Colors.white, // icons & text
      elevation: 60.0,
      surfaceTintColor: Colors.transparent, // ← important in M3
      // AppBar uses these over textTheme:
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      toolbarTextStyle: TextStyle(color: Colors.white),
      toolbarHeight: 64.0,
      actionsIconTheme: IconThemeData(color: Colors.white, size: 30),
    ),

    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(),
  );
}
