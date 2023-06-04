import 'package:farespy/map.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const  String idScreen = "home";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
                child: Container(
                  decoration: BoxDecoration(color: Colors.green),
                  child: TextButton(
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MapScreen()),
                      );
                    },
                    child: const Text(
                      'Go to Map',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                      ),
                    ),
                  ),
                ),
              ),
    );
  }
}