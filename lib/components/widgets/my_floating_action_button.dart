import 'package:flutter/material.dart';
import 'package:simple_app/components/custom_styles.dart';

// ignore: must_be_immutable
class MyFloatingActionButton extends StatelessWidget {
  var _controller;
  final scaffoldKey;

  MyFloatingActionButton(
      BuildContext context,
      PersistentBottomSheetController? this._controller,
      GlobalKey<ScaffoldState> this.scaffoldKey,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _toggleBottomSheet(),
      child: const Icon(Icons.add),
    );
  }

  void _toggleBottomSheet() {
    if (_controller == null) {
      _controller =
          scaffoldKey.currentState!.showBottomSheet((context) => Container(
                color: Colors.white,
                height: 200,
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 15,
                    ),
                    const ListTile(
                      leading: Icon(Icons.credit_card),
                      title: Text('Сумма'),
                      trailing: Text('200 \$'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: CustomStyle.lightGreyButton,
                      child: Text(
                        'Оплатить',
                        style: CustomStyle.blackText,
                      ),
                    ),
                  ],
                ),
              ));
    } else {
      _controller!.close();
      _controller = null;
    }
  }
}
