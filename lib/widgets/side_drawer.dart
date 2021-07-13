import 'package:flutter/material.dart';

import '../screens/binary_screen.dart';
import '../screens/decimal_screen.dart';
import 'package:calculator/constants.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            color: KButtonColor,
            child: Text(
              'Calculator',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            child: Text('Decimal'),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => DecimalScreen()),
              );
            },
            style: ButtonStyle(
              padding:
                  MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
            ),
          ),
          TextButton(
            child: Text('Binary'),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => BinaryScreen()),
              );
            },
            style: ButtonStyle(
              padding:
                  MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
            ),
          ),
          /*TextButton(
            child: Text('Octal'),
            onPressed: () {},
            style: ButtonStyle(
              padding:
                  MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
            ),
          ),
          TextButton(
            child: Text('Hexa'),
            onPressed: () {},
            style: ButtonStyle(
              padding:
                  MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
            ),
          ),*/
        ],
      ),
    );
  }
}
