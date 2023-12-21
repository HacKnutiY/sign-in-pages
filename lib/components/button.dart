import 'dart:ui';

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String _buttonText;
  String? _icon = "";
  TextStyle _textStyle =
      TextStyle(fontSize: 48, color: Colors.white, fontWeight: FontWeight.w100);
  MyButton(this._buttonText, [icon, textStyle]) {
    if (icon != null) {
      this._icon = icon;
      if (textStyle != null) {
        _textStyle = textStyle;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 8),
            primary: Color(0xff3B59A8),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
        onPressed: () {},
        icon: Text(
          "$_icon",
          style: _textStyle,
        ),
        label: Text(
          "$_buttonText",
          style: TextStyle(
            height: 2,
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}


/*
ElevatedButton.icon(
          icon: Text(
            "$_icon",
            style: _textStyle,
          ),
          onPressed: () => {},
          label: Text(
            "$_buttonText",
            style: TextStyle(
              height: 2,
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(0xff3B59A8),
          ),
        )
 */