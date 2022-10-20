import 'package:flutter/material.dart';

class CustomStyle {
  static const TextStyle blackText = TextStyle(color: Colors.black);
  static final ButtonStyle lightGreyButton = ButtonStyle(
    backgroundColor:
        MaterialStateProperty.all(const Color.fromARGB(255, 220, 220, 220)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      ),
    ),
  );
}
