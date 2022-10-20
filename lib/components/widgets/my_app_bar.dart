import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar(String label, GlobalKey<ScaffoldState> scaffoldKey, {super.key})
      : super(
          centerTitle: true,
          title: Text(label),
          actions: [
            IconButton(
              icon: const Icon(Icons.person_rounded),
              onPressed: () {
                scaffoldKey.currentState?.openEndDrawer();
              },
            )
          ],
        );
}
