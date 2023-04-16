import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
       
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
           
              Image.asset(
              'assets/images/logo.jpeg',
          width:80,
          height: 80,
        ),
        Container(
            width: 200,
  height: 200,
  decoration: BoxDecoration(
    color: Color(0xff258EAB),
    borderRadius: BorderRadius.circular(30),
  ),
  child: Center(
    child: Text(
      'Login',
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  //text
  //textformfield
 
)
        
        
        ]
        )
      ); 
    
  }
}