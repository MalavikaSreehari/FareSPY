import 'dart:collection';

import 'package:farespy/login.dart';
import 'package:farespy/map.dart';
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.jpeg',
              width: 300,
              height: 350,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: const Color(0xff93C561),
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MapScreen()),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: const Color(0xff258EAB),
              ),
              child: const Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
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
