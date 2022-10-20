import 'package:flutter/material.dart';

class MyEndDrawer extends Drawer {
  MyEndDrawer({super.key})
      : super(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage('assets/flutter.png'),
                backgroundColor: Colors.grey,
                radius: 30,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('data'),
              ),
            ],
          ),
        );
}
