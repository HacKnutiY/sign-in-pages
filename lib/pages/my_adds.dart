import 'dart:developer';
import 'package:djigit_tasks/components/button.dart';
import 'package:djigit_tasks/components/my_timeline_tile.dart';
import 'package:djigit_tasks/pages/new_ad_page.dart';
import 'package:flutter/material.dart';

import 'package:timeline_tile/timeline_tile.dart';

class MyAddsScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        bottomNavigationBar: Padding(
            padding: EdgeInsetsDirectional.all(16),
            child: MyButton(
              "Разместить объявление",
              icon: "+",
              onPressed: () {
                Navigator.pushNamed(context, '/ads_list/new_ad');
              },
            )),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsetsDirectional.all(16),
          child: ListView(
            children: [
//========Ad card===========
              Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
//==============main inforamtion: name, cost=========
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Груз",
                                style: TextStyle(height: 0),
                              ),
                              Text(
                                "600 ₽",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    height: 0),
                              )
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Повезу",
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.grey[300])),
                          )
                        ],
                      ),

//===============Routes================
                      Column(
                        children: [
                          //Timelines
                          MyTimeLineTile(
                              firstText: "Россия, Москва",
                              secondText: "12:00, 6 декабря",
                              isFisrt: true,
                              isLast: false,
                              icon: Icons.circle,
                              lineColor: Color.fromARGB(34, 0, 0, 0),
                              circleColor: Color(0xffEEEEEE),
                              iconColor: Color.fromARGB(37, 0, 0, 0)),
                          MyTimeLineTile(
                              firstText: "Россия, Москва",
                              secondText: "12:00, 6 декабря",
                              isFisrt: false,
                              isLast: true,
                              icon: Icons.place,
                              lineColor: Color.fromARGB(34, 0, 0, 0),
                              circleColor: Color(0xffE5EAFF),
                              iconColor: Color(0xff3B59A8))
                        ],
                      ),

                      SizedBox(
                        height: 30,
                      ),

//==============description===========
                      Text(
                          "Описание:orem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor..."),

                      SizedBox(
                        height: 30,
                      ),

//=============Edit button===========
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Color(0xffE5EAFF)),
                              padding: MaterialStatePropertyAll(
                                  EdgeInsetsDirectional.symmetric(
                                      vertical: 18))),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Изменить",
                                style: TextStyle(
                                    color: Color(0xff3B59A8), fontSize: 20),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.edit,
                                color: Color(0xff3B59A8),
                              )
                            ],
                          ))
                    ],
                  ))
            ],
          ),
        )));
  }
}
