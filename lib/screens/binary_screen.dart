import 'package:flutter/material.dart';
import 'package:calculator/widgets/build_button.dart';
import 'package:calculator/models/logic.dart';
import 'package:provider/provider.dart';
import 'package:calculator/constants.dart';

class BinaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      appBar: AppBar(
        leading: Container(),
        title: Text('Calculator'),
        centerTitle: true,
        backgroundColor: KButtonColor,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 30.0,
                  horizontal: 15.0,
                ),
                alignment: Alignment.bottomRight,
                child: Text(
                  Provider.of<CalculatorLogic>(context).binaryOutput.toString(),
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    BuildButton('DM', false),
                    BuildButton('<<', false),
                    BuildButton('>>', false),
                    BuildButton('^', false),
                  ],
                ),
                Row(
                  children: [
                    BuildButton('&', false),
                    BuildButton('|', false),
                    BuildButton('~', false),
                    BuildButton('xor', false),
                  ],
                ),
                Row(children: [
                  BuildButton('×', false),
                  BuildButton('÷', false),
                  BuildButton('+', false),
                  BuildButton('-', false),
                ]),
                Row(
                  children: [
                    BuildButton('C', false),
                    BuildButton('0', false),
                    BuildButton('1', false),
                    BuildButton('=', false),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
