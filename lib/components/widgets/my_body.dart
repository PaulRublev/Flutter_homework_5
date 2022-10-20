import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  final TabController _tabController;

  const MyBody(this._tabController, {super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: TabBarView(controller: _tabController, children: [..._tabsList]),
    );
  }
}

List<Widget> _tabsList = [
  const Center(child: Text('1')),
  const Center(child: Text('2')),
  const Center(child: Text('3')),
];
