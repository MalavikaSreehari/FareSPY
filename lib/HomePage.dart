import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
           
              Image.asset(
              'assets/images/logo.jpeg',
          width:300,
          height: 350,
        ),
        SizedBox(
    height: 40,
  ),
              Container(
  width: 200,
  height: 35,
  decoration: BoxDecoration(
  
    borderRadius: BorderRadius.circular(20),
    color: Color(0xff93C561),
  ),
          
  child: Center(
    child: Text(
    'Login',
    style: TextStyle(
        color: Colors.white,
        fontSize: 20,
    ),
    ),
    
  ),
 
),
 SizedBox(
    height: 20,
  ),
  Container(
  width: 200,
  height: 35,
  decoration: BoxDecoration(
  
    borderRadius: BorderRadius.circular(20),
    color: Color(0xff258EAB),
  ),
          
  child: Center(
    child: Text(
    'Sign Up',
    style: TextStyle(
        color: Colors.white,
        fontSize: 20,
    ),
    ),
    
  ),
),  
              
          ],
          
          
        ),
      ),

  
     );
  }
}