import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:djigit_tasks/components/text_field.dart';
import 'package:djigit_tasks/components/button.dart';
import 'package:djigit_tasks/pages/sign_in_second_page.dart';

class SignIn_first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myPhoneController = TextEditingController();
    final myNameController = TextEditingController();

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
                Column(children: [
                  MySignTextField(
                    "Номер телефона",
                    TextInputType.phone,
                    myPhoneController,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MySignTextField(
                    "Ваше имя",
                    TextInputType.name,
                    myNameController,
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  MyButton("Продолжить", onPressed: () {
                    if (myNameController.text.length > 2 &&
                        myPhoneController.text.length == 10) {
                      Navigator.pushNamed(context, '/auth/auth2',
                          arguments: "+7 " + myPhoneController.text);
                    }
                  }),
                  SizedBox(
                    height: 40,
                  )
                ]),
              ]),
            )
          ]),
    );
  }
}
