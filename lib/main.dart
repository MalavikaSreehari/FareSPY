import 'package:farespy/home_page.dart';
import 'package:farespy/initial_page.dart';
import 'package:farespy/auto.dart';
import 'package:farespy/login.dart';
import 'package:farespy/signup.dart';
import 'package:flutter/material.dart';
import 'package:farespy/paymentone.dart';

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
      initialRoute: InitialPage.idScreen,
      routes: {
        SignUp.idScreen:(context) => SignUp(),
        Login.idScreen:(context) => Login(),
        InitialPage.idScreen:(context) => InitialPage(),

      },
      home: HomePage()
    );
  }
}