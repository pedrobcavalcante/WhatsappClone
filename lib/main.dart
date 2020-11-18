import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'shared/routers/app_pages.dart';
import 'views/login/login.page.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(),
    home: LoginPage(),
    getPages: AppPages.pages,
  ));
}
