import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:djigit_tasks/components/text_field.dart';
import 'package:djigit_tasks/components/button.dart';
import 'package:djigit_tasks/pages/sign_in_second_page.dart';

class SignIn_first extends StatelessWidget {
  final myPhoneController = TextEditingController();
  final myNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          //WRAPPER
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(children: [
                SizedBox(
                  height: 185,
                ),

                //Text column
                Column(
                  children: [
                    Text(
                      "Авторизация",
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Введите номер телефона для авторизации",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(71, 0, 0, 0),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 130,
                ),

                //Text forms field wrapper
                _MyForm(),
              ]),
            )
          ]),
    );
  }
}

class _MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<_MyForm> {
  Widget? _namedError;
  Widget? _phonedError;
  final myPhoneController = TextEditingController();
  final myNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      MySignTextField(
        "Номер телефона",
        TextInputType.phone,
        myPhoneController,
        errorText: _phonedError,
      ),
      SizedBox(
        height: 25,
      ),
      MySignTextField(
        "Ваше имя",
        TextInputType.name,
        myNameController,
        errorText: _namedError,
      ),
      SizedBox(
        height: 80,
      ),
      MyButton("Продолжить", onPressed: () {
        bool _isNameFieldOk = myNameController.text.length >= 2;
        bool _isPhoneFieldOk = myPhoneController.text.length == 10;
        if (_isNameFieldOk && _isPhoneFieldOk) {
          _phonedError = null;
          _namedError = null;
          Navigator.pushNamed(context, '/auth/auth2',
              arguments: "+7 " + myPhoneController.text);
          setState(() {});
        } else if (!_isNameFieldOk && _isPhoneFieldOk) {
          _phonedError = null;
          _namedError = Text(
            "Неккоректное значение в поле",
            style: TextStyle(color: Colors.red),
          );
          setState(() {});
        } else if (!_isPhoneFieldOk && _isNameFieldOk) {
          _namedError = null;
          _phonedError = Text(
            "Номер введен неправильно",
            style: TextStyle(color: Colors.red),
          );
          setState(() {});
        } else {
          _namedError = Text(
            "Неккоректное значение в поле",
            style: TextStyle(color: Colors.red),
          );
          _phonedError = Text(
            "Номер введен неправильно",
            style: TextStyle(color: Colors.red),
          );
          setState(() {});
        }
      }),
      SizedBox(
        height: 40,
      )
    ]);
  }
}

/*

*/