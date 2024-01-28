import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'moduels/detilspage/views/detils_page.dart';
import 'moduels/homepage/views/home_page.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        color: Colors.white,
      ),
    ),
    getPages: [
      GetPage(
        name: "/",
        page: () => HomePage(),
      ),
      GetPage(
        name: "/detils",
        page: () => DetilsPage(),
      ),
    ],
  ));
}
