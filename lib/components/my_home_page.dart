import 'package:flutter/material.dart';
import 'package:simple_app/components/widgets/my_app_bar.dart';
import 'package:simple_app/components/widgets/my_body.dart';
import 'package:simple_app/components/widgets/my_bottom_navigation_bar.dart';
import 'package:simple_app/components/widgets/my_drawer.dart';
import 'package:simple_app/components/widgets/my_end_drawer.dart';
import 'package:simple_app/components/widgets/my_floating_action_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  PersistentBottomSheetController? _controller = null;
  late TabController _tabController;
  int _curentTabIndex = 0;

  void callback(int value) {
    setState(() {
      _tabController.index = value;
      _curentTabIndex = value;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: MyBottomNavigationBar.bottomBarItems.length,
      vsync: this,
    );
    _tabController.addListener(() {
      setState(() {
        _curentTabIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MyAppBar(widget.title, scaffoldKey),
      endDrawer: MyEndDrawer(),
      drawer: MyDrawer(),
      body: MyBody(_tabController),
      bottomNavigationBar: MyBottomNavigationBar(
        _curentTabIndex,
        callback,
      ),
      floatingActionButton:
          MyFloatingActionButton(context, _controller, scaffoldKey),
    );
  }
}
