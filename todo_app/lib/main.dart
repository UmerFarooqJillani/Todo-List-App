import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:todo_app/app/routes.dart';
import 'package:todo_app/app/themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // width, height
      minTextAdapt: true,
      splitScreenMode: true,
      // Use `child` for performance, pass your root screen here
      // child: const HomeScreen(),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          theme: MyThemes.lightTheme,

          initialRoute: "/",
          routes: AppRoutes.myRoutes,
          onUnknownRoute: (settings) => MaterialPageRoute(
            // fallback if a wrong route is opened.
            builder: (_) =>
                const Scaffold(body: Center(child: Text("Route not found"))),
          ),
        );
      },
    );
  }
}
