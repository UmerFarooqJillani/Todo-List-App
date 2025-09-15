import 'package:todo_app/features/home/home_screen.dart';
import 'package:todo_app/features/playground/playground_screen.dart';

class AppRoutes {
  static final myRoutes = {
    "/": (context) => HomePage(),
    "home": (context) => HomePage(),
    "playground": (context) => PlaygroundPage(),
  };
}
