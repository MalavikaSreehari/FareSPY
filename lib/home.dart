import 'package:farespy/getfare.dart';
import 'package:flutter/material.dart';
import 'package:farespy/map.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset(
              'assets/images/logo.jpeg',
              width: 350,
              height: 400,
            ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               TextButton(
                        onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GetFare()),
                      );
                    }, child: Column(
                      children: [
                        Container(
                  width: 120,
                  height: 140,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF258EAB),
                      width: 3.0,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.9),
                        spreadRadius: 3.0,
                        blurRadius: 10.0,
                        offset: const Offset(0, 3),
                      )
                    ]
                  ),
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Image(image: AssetImage('assets/images/getfare.png')),
                      ),
                      Text(
                        'Get',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF258EAB)
                        ),
                      ),
                      Text(
                        'Fare',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF258EAB)
                        ),
                      ),
                    ],
                  ),
                ),

                      ],
                    ),
                      ),
                
              
              Container(
                  width: 120,
                  height: 140,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF258EAB),
                      width: 3.0,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3.0,
                        blurRadius: 10.0,
                        offset: const Offset(0, 3),
                      )
                    ]
                  ),
                  
                  child: TextButton(
                        onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MapScreen()),
                      );
                    }, child: Column(
                      children: const [
                        SizedBox(
                        height: 70,
                        child: Image(image: AssetImage('assets/images/newroute.png'))
                        ),
                        Text(
                        'New',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF258EAB)
                        ),
                      ),
                      Text(
                        'Route',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF258EAB)
                        ),
                      ),

                      ],
                    ),
                      ),
                ),
                
            ],
          )
        ],
      ),
      
    );
  }
}
