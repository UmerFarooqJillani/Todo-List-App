import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      // Use `child` for performance; pass your root screen here
      // child: const HomeScreen(),
      builder: (context, child) {
        return MaterialApp(
          // Keep MVVM routing here if needed
          home: child, // ← uses the `HomeScreen` above

        );
      },
    );
  }
}