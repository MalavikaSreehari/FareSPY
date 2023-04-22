import 'package:farespy/HomePage.dart';
import 'package:farespy/paymenttwo.dart';
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentTwo()
    );
  }
}


