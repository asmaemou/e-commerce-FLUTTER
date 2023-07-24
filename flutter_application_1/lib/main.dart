import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/app_page.dart';
import 'package:flutter_application_1/route/app_route.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key ? key}):super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPage.list,
      initialRoute: AppRoute.dashboard,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,

    );
  }
}