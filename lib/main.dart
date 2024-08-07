import 'package:flutter/material.dart';
import 'package:homie2/home.dart';
import 'package:homie2/login.dart';
import 'package:homie2/onboardingscreen1.dart';
import 'package:homie2/onboardingscreen4.dart';
import 'package:homie2/resetpassword1.dart';
import 'package:homie2/signup.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
   const MyApp ({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboardingscreen1()
    );
  }
}