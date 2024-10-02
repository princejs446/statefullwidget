import 'package:flutter/material.dart';
import 'package:statefulwidgetexample/colorchange.dart';
import 'package:statefulwidgetexample/homescreen.dart';
import 'package:statefulwidgetexample/textinput.dart';
import 'package:statefulwidgetexample/togglescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
home: ColorChangeScreen(),
    );
  }
}

