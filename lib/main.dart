import 'package:djigit_tasks/pages/sign_in_first_page.dart';
import 'package:djigit_tasks/pages/sign_in_second_page.dart';
import 'package:flutter/material.dart';
import 'package:djigit_tasks/pages/new_ad_page.dart';
import 'package:djigit_tasks/pages/my_adds.dart';
import 'package:djigit_tasks/components/my_timeline_tile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/auth': (context) => SignIn_first(),
      '/auth/auth2': (context) => SignScreen_second(),
      '/ads_list': (context) => MyAddsScreen(),
      '/ads_list/new_ad': (context) => NewAdScreen(),
    },
    initialRoute: "/auth",
  ));
}
