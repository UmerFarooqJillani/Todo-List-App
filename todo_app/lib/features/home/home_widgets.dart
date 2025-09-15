import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:todo_app/app/constants/strings.dart';

// ignore: must_be_immutable
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  MyAppBar({super.key});
  bool isdark = true;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(appTitle, style: Theme.of(context).textTheme.titleLarge),
      actions: [
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            Switch(value: isdark, onChanged: (value) {}, ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
