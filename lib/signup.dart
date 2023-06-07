import 'package:farespy/home_page.dart';
import 'package:farespy/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:email_validator/email_validator.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  static const String idScreen = "signUp";
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();


  SignUp({Key? key}) : super(key: key);
  
  get usersRef => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(
            'assets/images/logo.jpeg',
            width: 80,
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 40),
            child: Container(
                width: 300,
                height: 500,
                decoration: BoxDecoration(
                  color: const Color(0xff93C561),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top:10),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 22),
                      ),
                      Container(
                        width: 250,
                        height: 45,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: SingleChildScrollView(
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                              controller: nameTextEditingController,
                              decoration: const InputDecoration(
                                labelText: 'Username',
                                border: InputBorder.none,
                              )),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 28),
                      ),
                      Container(
                        width: 250,
                        height: 45,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: SingleChildScrollView(
                          child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: emailTextEditingController,
                              validator:(value) {
                                if (value == null || value.isEmpty) {
                          return 'Please enter your email address';
                                              }
                                              if (!EmailValidator.validate(value)) {
                          return 'Please enter a valid email address';
                                              }
                                              return null;
                              },
                              decoration: const InputDecoration(
                                labelText: 'Email Id',
                                border: InputBorder.none,
                              ),
                              ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 28),
                      ),
                      Container(
                        width: 250,
                        height: 45,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: SingleChildScrollView(
                          child: TextFormField(
                              obscureText: true,
                              controller: passwordTextEditingController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                                              }
                                              if (value.length < 6) {
                          return 'Password must be at least 6 characters long';
                                              }
                                              return null;
                              },
                              decoration: const InputDecoration(
                                labelText: 'Password',
                                border: InputBorder.none,
                              )),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 28),
                      ),
                      Container(
                        width: 250,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: SingleChildScrollView(
                          child: TextFormField(
                            obscureText: true,
                            validator: (value) {
                               if (value == null || value.isEmpty) {
                          return 'Please confirm your password';
                                              }
                                              if (value != passwordTextEditingController.text) {
                          return 'Passwords do not match';
                                              }
                                              return null;
                            },
                              decoration: const InputDecoration(
                            labelText: '      Confirm Password',
                            border: InputBorder.none,
                            
                            
                          )),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 28),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          width: 150,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: TextButton(
                            onPressed: () {
                              // if (nameTextEditingController.text.length < 3) {
                              //   displayToastMessage(
                              //       "Name must be atleast 3 characters", context);
                              // } else if (!emailTextEditingController.text
                              //     .contains("@")) {
                              //   displayToastMessage(
                              //       "Email address not valid", context);
                              // } else if (passwordTextEditingController.text.length <
                              //     8) {
                              //   displayToastMessage(
                              //       "Password must be atleast 8 characters",
                              //       context);
                              // } else {
                              if (_formKey.currentState!.validate()){
                                registerNewUser(context);
                
                              }  
                                
                              // }
                            },
                            child: const Text(
                              'SIGN UP',
                              style: TextStyle(
                                color: Color(0xff93C561),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0,),
                      const Text(
                        'Already have an account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, Login.idScreen, (route) => false);
                        },
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                            color: Color(0xff258EAB),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ]),
      ),
    ));
  }

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  void registerNewUser(BuildContext context) async {
    final User? user = (await _firebaseAuth.createUserWithEmailAndPassword(
            email: emailTextEditingController.text,
            // ignore: body_might_complete_normally_catch_error
            password: passwordTextEditingController.text).catchError((errMsg){
              displayToastMessage("Error: $errMsg", context);
            }))
        .user;
    if (user != null) {
      // user registration successful, do something
      

      Map userDataMap = {
        "name": nameTextEditingController.text.trim(),
        "email": emailTextEditingController.text.trim(),

      };

      usersRef.child(user.uid).set(userDataMap);
      // ignore: use_build_context_synchronously
      displayToastMessage("Your account has been created", context);

      // ignore: use_build_context_synchronously
      Navigator.pushNamedAndRemoveUntil(context, HomePage.idScreen, (route) => false);
    } else {
      // ignore: use_build_context_synchronously
      displayToastMessage("New user account has not been created", context);
    }
  }
}

displayToastMessage(String message, BuildContext context) {
  Fluttertoast.showToast(msg: message);
}