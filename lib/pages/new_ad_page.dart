import 'package:flutter/material.dart';

import 'package:djigit_tasks/components/text_field.dart';
import 'package:djigit_tasks/components/button.dart';

class NewAdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.arrow_back),
          actions: [
            TextButton(
              child: Text("Сохранить и выйти"),
              onPressed: () => {},
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
        backgroundColor: Color(0xffF5F5F5),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Название объявления",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      MyAddTextField(
                        hint: "Введите название",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Описание",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      MyAddTextField(
                        hint: "Введите описание",
                        LinesCount: 3,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Куда",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      MyAddTextField(
                        type: TextInputType.datetime,
                        hint: "Страна, Город, Аэропорт",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Откуда",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      MyAddTextField(
                        type: TextInputType.datetime,
                        hint: "Страна, Город, Аэропорт",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Дата въезда",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      MyDateTextField()
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Дата отъезда",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      MyDateTextField()
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  MyButton("Разместить объявление")
                ],
              )),
        ));
  }
}
