import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PaymentOne extends StatelessWidget {
  const PaymentOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            Container(
              color: const Color(0xFF93C561),
              width: double.infinity,
              height: 80,
            ),
            const Text(
              'Fare',
              style: TextStyle(fontSize: 31),
            ),
            const Divider(
              color: Color(0xFF93C561),
              thickness: 2,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 100.0),
                ),
                Image(
                  image: AssetImage('assets/images/road_icon.png'),
                  width: 50,
                ),
                Text(
                  ' On road Charge',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            const SizedBox(
              width: 250, // Set the width of the divider
              child: Divider(
                color: Color(0xFF93C561),
                thickness: 1,
              ),
            ),
            Row(
              children: [
                Column(
                  children: const [
                    Padding(padding: EdgeInsets.only(left: 200.0)),
                    Text(
                      'Distance',
                      style: TextStyle(fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        '20km',
                        style: TextStyle(
                          color:
                              Color(0xFF258EAB), // set the text color to blue
                          fontSize: 24, // set the font size
                          fontWeight: FontWeight.bold, // set the font weight
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50, // Set the width of the divider
                  child: VerticalDivider(
                    color: Color(0xFF93C561),
                    thickness: 3,
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      'Fare',
                      style: TextStyle(fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        '\u{20B9}${440.00}',
                        style: TextStyle(
                          color:
                              Color(0xFF258EAB), // set the text color to blue
                          fontSize: 24, // set the font size
                          fontWeight: FontWeight.bold, // set the font weight
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Divider(
              color: Color(0xFF93C561),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 100.0),
                ),
                Image(
                  image: AssetImage('assets/images/road_icon.png'),
                  width: 50,
                ),
                Text(
                  ' Waiting Charge',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            const SizedBox(
              width: 250, // Set the width of the divider
              child: Divider(
                color: Color(0xFF93C561),
                thickness: 1,
              ),
            ),
            Row(
              children: [
                Column(
                  children: const [
                    Padding(padding: EdgeInsets.only(left: 200.0)),
                    Text(
                      'Time',
                      style: TextStyle(fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        '20km',
                        style: TextStyle(
                          color:
                              Color(0xFF258EAB), // set the text color to blue
                          fontSize: 24, // set the font size
                          fontWeight: FontWeight.bold, // set the font weight
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50, // Set the width of the divider
                  child: VerticalDivider(
                    color: Color(0xFF93C561),
                    thickness: 3,
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      'Fare',
                      style: TextStyle(fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        '\u{20B9}${440.00}',
                        style: TextStyle(
                          color:
                              Color(0xFF258EAB), // set the text color to blue
                          fontSize: 24, // set the font size
                          fontWeight: FontWeight.bold, // set the font weight
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Divider(
              color: Color(0xFF258EAB),
              thickness: 3,
            ),
            Row(
              children: const [
                Padding(padding: EdgeInsets.only(left: 60)),
                Image(
                  image: AssetImage('assets/images/road_icon.png'),
                ),
                Text(
                  'Total Fare',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Text(
              '\u{20B9}${490.00}',
              style: TextStyle(
                  color: Color(0xFF258EAB),
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(const Size(200, 60)),
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF258EAB)),
              ),
              child: const Text(
                'Pay',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 100)),
            Container(
              color: const Color(0xFF93C561),
              width: double.infinity,
              height: 80,
            ),
          ],
        ),
      );
  }
}