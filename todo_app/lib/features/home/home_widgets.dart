import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:todo_app/app/constants/strings.dart';



class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(appTitle, style: Theme.of(context).textTheme.titleLarge),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); 
}