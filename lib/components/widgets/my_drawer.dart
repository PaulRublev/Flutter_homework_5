import 'package:flutter/material.dart';
import 'package:simple_app/components/custom_styles.dart';

class MyDrawer extends Drawer {
  MyDrawer({super.key})
      : super(
            child: Column(
          children: <Widget>[
            const DrawerHeader(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/flutter.png'),
                backgroundColor: Color.fromARGB(255, 165, 208, 243),
                radius: 50,
              ),
            ),
            ..._listOfTiles,
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  for (final label in _buttonsProps.keys)
                    ElevatedButton(
                      onPressed: _buttonsProps[label],
                      style: CustomStyle.lightGreyButton,
                      child: Text(
                        label,
                        style: CustomStyle.blackText,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ));
}

Map<String, void Function()> _buttonsProps = {
  'Выход': () {},
  'Регистрация': () {}
};

List<ListTile> _listOfTiles = [
  const ListTile(
    leading: Icon(Icons.file_open),
    title: Text('Files'),
    trailing: Icon(Icons.arrow_forward_ios_rounded),
  ),
  const ListTile(
    leading: Icon(Icons.account_box),
    title: Text('Profile'),
    trailing: Icon(Icons.arrow_forward_ios_rounded),
  ),
  const ListTile(
    leading: Icon(Icons.image),
    title: Text('Images'),
    trailing: Icon(Icons.arrow_forward_ios_rounded),
  )
];
