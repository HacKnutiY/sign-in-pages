import 'package:flutter/material.dart';
import 'package:djigit_tasks/components/text_field.dart';
import 'package:djigit_tasks/components/button.dart';

class SignPage_second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          //WRAPPER
          child: Padding(
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
                "Введите код, отправленный на номер [код из экрана 1]",
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
            ),
            MyButton("Продолжить"),
          ]),
          
        ]),
      )),
    );
  }
}
