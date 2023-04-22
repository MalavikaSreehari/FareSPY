import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
        Padding(
          padding: const EdgeInsets.only(left:50,top:60),
          child: Container(
              width: 300,
          height: 500,
          decoration: BoxDecoration(
            color: Color(0xff93C561),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
               Text('Sign Up',
               style: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:28),
               ),
            Container(
               width: 250,
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(25.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        
        offset: Offset(0, 3),
      ),
    ],
  ),
              child: TextFormField(
                      decoration: InputDecoration(
              labelText: 'Username',
              border: InputBorder.none,  
              hintText: 'Enter your username', 
                      )
                
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:28),
               ),
            Container(
               width: 250,
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(25.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        
        offset: Offset(0, 3),
      ),
    ],
  ),
   child: TextFormField(
                      decoration: InputDecoration(
              labelText: 'Email Id',
              border: InputBorder.none,  
              hintText: 'Enter your Email Id', 
                      )
                
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:28),
               ),
            Container(
               width: 250,
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(25.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        
        offset: Offset(0, 3),
      ),
    ],
  ),
              child: TextFormField(
                      decoration: InputDecoration(
              labelText: 'Password',
              border: InputBorder.none,  
              hintText: 'Enter your Password', 
                      )
                
                    ),
                    
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:28),
               ),
            Container(
              width: 250,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:  Colors.white,
              ),
              child: TextFormField(
                      decoration: InputDecoration(
              labelText: '    Confirm Password',
              border: InputBorder.none,  
              hintText: 'Enter your Password', 
                      )
                
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:28),
               ),
            Padding(
              padding: const EdgeInsets.only(top:29),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              
                child: TextButton(onPressed: ()
                {}, child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Color(0xff93C561),
                          fontSize: 20,
                        ),
                      ),),
              ),
            ),
            Text('Already have an account',
            style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.normal,
          
              ),
              ),
              Text('Log In',
            style: TextStyle(
          color: Color(0xff258EAB),
          fontSize: 16,
          fontWeight: FontWeight.normal,
          
              ),
              ),
          
            ], 
            
  
     
    

            
          )
          ),
          
        ),
          ]
        )
    );
  }
}