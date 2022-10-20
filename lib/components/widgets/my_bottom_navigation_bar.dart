import 'package:flutter/material.dart';

class MyBottomNavigationBar extends BottomNavigationBar {
  MyBottomNavigationBar(
    int tabIndex,
    void Function(int value) callback, {
    super.key,
  }) : super(
          onTap: (value) {
            callback(value);
          },
          currentIndex: tabIndex,
          items: <BottomNavigationBarItem>[
            for (final item in bottomBarItems)
              BottomNavigationBarItem(label: item.label, icon: item.icon)
          ],
        );

  static final List<_TabItem> bottomBarItems = [
    _TabItem('Photo', const Icon(Icons.photo)),
    _TabItem('Chat', const Icon(Icons.chat)),
    _TabItem('Albums', const Icon(Icons.album))
  ];
}

class _TabItem {
  String label;
  Icon icon;
  _TabItem(this.label, this.icon);
}
