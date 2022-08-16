import 'package:flutter/material.dart';
import 'package:massenger_app/layout/home.dart';

import 'bmiCalculator.dart';


void main() {
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //   runApp(const MyApp());This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: BMI(),
    );
  }
}


