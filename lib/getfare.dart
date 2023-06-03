import 'package:farespy/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetFare extends StatelessWidget {
  
  TextEditingController distanceTextEditingController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'Getfare',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
          Container(
            width: 100,
            color: const Color(0xFF258EAB),
            child: Container(
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
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                          controller: distanceTextEditingController,
                          decoration: const InputDecoration(
                            labelText: 'Distance',
                            border: InputBorder.none,
                            hintText: 'Enter the distance',
                          )),
                    ),
          ),
        ],
      ),
    );
  }
}