
import 'package:farespy/DataHandler/app_data.dart';
import 'package:farespy/home_page.dart';
import 'package:farespy/initial_page.dart';
import 'package:farespy/auto.dart';
import 'package:farespy/login.dart';
import 'package:flutter/material.dart';

import 'package:farespy/paymentone.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // return ChangeNotifierProvider(
    //   create: (context) => AppData(),
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
      //),
    );
  }
}