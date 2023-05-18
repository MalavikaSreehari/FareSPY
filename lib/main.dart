import 'package:farespy/HomePage.dart';
import 'package:farespy/initial_page.dart';
import 'package:farespy/auto.dart';
import 'package:farespy/login.dart';
import 'package:farespy/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();  
  await Firebase.initializeApp();
  runApp(const MyApp());
}

DatabaseReference usersRef = FirebaseDatabase.instance.ref().child("users");

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
        HomePage.idScreen:(context) => HomePage(),

      },
      home: HomePage()
    );
  }
}