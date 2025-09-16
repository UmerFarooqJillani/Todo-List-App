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
      title: Text(appTitle),
      actions: [
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            Switch(value: isdark, onChanged: (value) {}),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64.0);
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Center"));
  }
}

class MyFCB extends StatelessWidget {
  const MyFCB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () {}, child: Icon(Icons.add));
  }
}
