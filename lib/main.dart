import 'package:farespy/HomePage.dart';
import 'package:farespy/home.dart';
import 'package:farespy/initial_page.dart';
import 'package:farespy/login.dart';
import 'package:farespy/paymentone.dart';
import 'package:farespy/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentOne()

    );
  }
}