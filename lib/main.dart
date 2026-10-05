import 'package:belajarflutter11pplg2/pages/calculator_page.dart';
import 'package:flutter/material.dart';
import 'package:belajarflutter11pplg2/pages/login_page.dart';
import 'package:get/get.dart';
import 'package:belajarflutter11pplg2/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Belajar Flutter 11 PPLG 2",
        initialRoute: Routes.registraion,
        getPages: Routes.myPages,
    );
    
  }
}