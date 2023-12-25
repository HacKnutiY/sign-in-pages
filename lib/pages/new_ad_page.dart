import 'dart:math';

import 'package:flutter/material.dart';

import 'package:djigit_tasks/components/text_field.dart';
import 'package:djigit_tasks/components/button.dart';
import 'package:flutter/services.dart';

class NewAdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void pressedMeth() {
      Navigator.pushNamedAndRemoveUntil(
          context, '/ads_list', ModalRoute.withName('/'));
    }

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: pressedMeth,
          ),
          actions: [
            TextButton(
              child: Text("Сохранить и выйти"),
              onPressed: pressedMeth,
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
        backgroundColor: Color(0xffF5F5F5),
        bottomNavigationBar: Padding(
            padding: EdgeInsetsDirectional.all(14),
            child: MyButton(
              "Разместить объявление",
              onPressed: () {
                pressedMeth();
              },
            )),
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(16),
              child: ListView(
                children: [
                  Text(
                    "Новое объявление",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  myListItem(
                      textFieldWidget: MyAddTextField(
                        hint: "Введите название",
                      ),
                      textFieldName: "Название объявления"),
                  SizedBox(
                    height: 20,
                  ),
                  myListItem(
                      textFieldWidget: MyAddTextField(
                        hint: "Введите описание",
                        LinesCount: 3,
                      ),
                      textFieldName: "Описание"),
                  SizedBox(
                    height: 20,
                  ),
                  myListItem(
                      textFieldWidget: MyAddTextField(
                        type: TextInputType.datetime,
                        hint: "Страна, Город, Аэропорт",
                      ),
                      textFieldName: "Куда"),
                  SizedBox(
                    height: 20,
                  ),
                  myListItem(
                      textFieldWidget: MyAddTextField(
                        type: TextInputType.datetime,
                        hint: "Страна, Город, Аэропорт",
                      ),
                      textFieldName: "Откуда"),
                  SizedBox(
                    height: 20,
                  ),
                  myListItem(
                      textFieldWidget: MyDateTextField(),
                      textFieldName: "Дата отъезда"),
                  SizedBox(
                    height: 20,
                  ),
                  myListItem(
                      textFieldWidget: MyDateTextField(),
                      textFieldName: "Дата приезда"),
                ],
              )),
        ));
  }
}

Widget myListItem(
    {required Widget textFieldWidget, required String textFieldName}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        textFieldName,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, height: 2),
      ),
      textFieldWidget,
    ],
  );
}
