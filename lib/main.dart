import 'package:flutter/material.dart';
import 'package:inkmelo_app/config/Themes.dart';
import 'welcomepage.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'InkMelo BookStore',
      theme: lightTheme,
      home: const WelcomePage(),
    );
  }
}