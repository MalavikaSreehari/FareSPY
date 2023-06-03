import 'package:farespy/home_page.dart';
import 'package:farespy/main.dart';
import 'package:farespy/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatelessWidget {
  static const String idScreen = "login";
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image.asset(
        'assets/images/logo.jpeg',
        width: 80,
        height: 80,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 50, top: 60),
        child: Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              color: Color(0xff258EAB),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 28),
                ),
                Container(
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
                      controller: emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: InputBorder.none,
                        hintText: 'Enter your email',
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 28),
                ),
                Container(
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
                      controller: passwordTextEditingController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: InputBorder.none,
                        hintText: 'Enter your Password',
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 28),
                ),
                Container(
                  width: 150,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: TextButton(
                    onPressed: () {
                      if (!emailTextEditingController.text.contains("@")) {
                        displayToastMessage(
                            "Email address is not valid.", context);
                      } else if (passwordTextEditingController.text.isEmpty) {
                        displayToastMessage("Password is required.", context);
                      } else {
                        loginAndAuthenticateUser(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xff258EAB),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Do not have an account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, SignUp.idScreen, (route) => false);
                  },
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                      color: Color(0xff93C561),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            )),
      ),
    ]));
  }

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  void loginAndAuthenticateUser(BuildContext context) async {
    final User? user = (await _firebaseAuth
            .signInWithEmailAndPassword(
                email: emailTextEditingController.text,
                password: passwordTextEditingController.text)
            .catchError((errMsg) {
      displayToastMessage("Error: " + errMsg.toString(), context);
    }))
        .user;

    if (user != null) {
      // user registration successful, do something
      usersRef.child(user.uid).once().then((DatabaseEvent event) {
        DataSnapshot snap = event.snapshot;
        if (snap.value != null) {
          Navigator.pushNamedAndRemoveUntil(
              context, HomePage.idScreen, (route) => false);
          displayToastMessage("You are logged in.", context);
        } else {
          _firebaseAuth.signOut();
          displayToastMessage(
              "No records exist for this account. Try logging in from a valid account or sign up.",
              context);
        }
      });
    } else {
      displayToastMessage("Error signing in", context);
    }
  }
}
