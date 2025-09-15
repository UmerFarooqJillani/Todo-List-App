import 'package:flutter/material.dart';

import 'package:todo_app/features/home/home_widgets.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(child: Text("Home Page"),),
    );
  }
} 