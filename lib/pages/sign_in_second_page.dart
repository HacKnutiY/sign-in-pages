import 'package:flutter/material.dart';
import 'package:djigit_tasks/components/text_field.dart';
import 'package:djigit_tasks/components/button.dart';

import 'package:djigit_tasks/pages/new_ad_page.dart';
import 'package:djigit_tasks/pages/my_adds.dart';

class SignScreen_second extends StatelessWidget {
  final myCodeController = TextEditingController();

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
          Column(children: [
            MySignTextField(
              "Код из СМС",
              TextInputType.number,
              helperText: "Получить код повторно",
              controller: myCodeController,
            ),
            MyButton(
              "Продолжить",
              onPressed: () {
                if (myCodeController.text.length != 0) {
                  /*Route route =
                      MaterialPageRoute(builder: (context) => MyAddsScreen());*/
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/ads_list', ModalRoute.withName('/'));
                }
              },
            ),
          ]),
        ]),
      )),
    );
  }
}
