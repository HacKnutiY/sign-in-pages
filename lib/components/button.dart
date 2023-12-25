import 'dart:ui';

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String _buttonText;
  String? _icon = "";
  TextStyle _iconStyle =
      TextStyle(fontSize: 48, color: Colors.white, fontWeight: FontWeight.w100);
  VoidCallback? _onPressedFun; //ОБЪЯВИЛ ПОЛЕ !!!!!

  MyButton(this._buttonText, {icon, textStyle, onPressed}) {
    if (icon != null) {
      this._icon = icon;
      if (textStyle != null) {
        _iconStyle = textStyle;
      }
    }
    _onPressedFun = onPressed;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 8),
            primary: Color(0xff3B59A8),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
        onPressed: _onPressedFun, 
        icon: Text(
          "$_icon",
          style: _iconStyle,
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