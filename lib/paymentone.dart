import 'package:farespy/paymenttwo.dart';
import 'package:flutter/material.dart';

class PaymentOne extends StatelessWidget {
  const PaymentOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFF93C561),
            child: const Image(image: AssetImage('assets/images/circle_tick.png')),
          ),
          const Text(
            'Fare',
            style: TextStyle(fontSize: 31),
          ),
          const Divider(
            color: Color(0xFF93C561),
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: const [
                  Text(
                    'Distance',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '20km',
                    style: TextStyle(
                      color: Color(0xFF258EAB), // set the text color to blue
                      fontSize: 24, // set the font size
                      fontWeight: FontWeight.bold, // set the font weight
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(right: 50)),
              Container(
                color: const Color(0xFF93C561),
                width: 1,
                height: 100,
              ),
              const Padding(padding: EdgeInsets.only(left: 50)),
              Column(
                children: const [
                  Text(
                    'Fare',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '\u{20B9}${440.00}',
                    style: TextStyle(
                      color: Color(0xFF258EAB), // set the text color to blue
                      fontSize: 24, // set the font size
                      fontWeight: FontWeight.bold, // set the font weight
                    ),
                  ),
                ],
              )
            ],
          ),
          const Divider(
            color: Color(0xFF93C561),
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage('assets/images/waiting_icon.png'),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: const [
                  Text(
                    'Time',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '1hr',
                    style: TextStyle(
                      color: Color(0xFF258EAB), // set the text color to blue
                      fontSize: 24, // set the font size
                      fontWeight: FontWeight.bold, // set the font weight
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(right: 50)),
              Container(
                color: const Color(0xFF93C561),
                width: 1,
                height: 100,
              ),
              const Padding(padding: EdgeInsets.only(left: 50)),
              Column(
                children: const [
                  Text(
                    'Fare',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '\u{20B9}${50.00}',
                    style: TextStyle(
                      color: Color(0xFF258EAB), // set the text color to blue
                      fontSize: 24, // set the font size
                      fontWeight: FontWeight.bold, // set the font weight
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage('assets/images/total_cost_icon.png'),
                width: 80,
              ),
              Text(
                'Total Fare',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Text(
            '\u{20B9}${490.00}',
            style: TextStyle(
                color: Color(0xFF258EAB),
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all<Size>(const Size(200, 60)),
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xFF258EAB)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60.0),
                ),
              ),
            ),
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PaymentTwo()),
                  );
                },
                child: const Text(
                  'Pay',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: const Color(0xFF93C561),
              width: double.infinity,
              height: 60-1.9,
            ),
          ),
        ],
      ),
    );
  }
}
