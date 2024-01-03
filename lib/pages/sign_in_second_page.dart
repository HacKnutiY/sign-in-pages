import 'package:flutter/material.dart';
import 'package:djigit_tasks/components/text_field.dart';
import 'package:djigit_tasks/components/button.dart';

import 'package:djigit_tasks/pages/new_ad_page.dart';
import 'package:djigit_tasks/pages/my_adds.dart';

class SignScreen_second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RouteSettings settings = ModalRoute.of(context)!.settings;
    String _message = settings.arguments.toString();
    return Scaffold(
      body: SafeArea(
          //WRAPPER
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ListView(children: [
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
                "Введите код, отправленный на номер $_message",
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
          _MyForm()
        ]),
      )),
    );
  }
}

class _MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<_MyForm> {
  final myCodeController = TextEditingController();
  Widget? _errorText;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      MySignTextField(
        "Код из СМС",
        TextInputType.number,
        helperText: "Получить код повторно",
        myCodeController,
        errorText: _errorText,
      ),
      MyButton(
        "Продолжить",
        onPressed: () {
          if (myCodeController.text.length == 6) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/ads_list', ModalRoute.withName('/'));
            _errorText = null;
          } else {
            _errorText = Text(
              "Код должен состоять из 6 символов",
              style: TextStyle(color: Colors.red),
            );
          }
          setState(() {});
        },
      ),
    ]);
  }
}
