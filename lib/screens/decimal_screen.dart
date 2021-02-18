import 'package:flutter/material.dart';
import 'package:calculator/widgets/build_button.dart';
import 'package:calculator/models/logic.dart';
import 'package:provider/provider.dart';
import 'package:calculator/constants.dart';

class DecimalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      appBar: AppBar(
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
                  Provider.of<CalculatorLogic>(context)
                      .decimalOutput
                      .toString(),
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
                    BuildButton('BM', true),
                    BuildButton('^', true),
                    BuildButton('+/-', true),
                    BuildButton('÷', true),
                  ],
                ),
                Row(
                  children: [
                    BuildButton('7', true),
                    BuildButton('8', true),
                    BuildButton('9', true),
                    BuildButton('×', true),
                  ],
                ),
                Row(
                  children: [
                    BuildButton('4', true),
                    BuildButton('5', true),
                    BuildButton('6', true),
                    BuildButton('-', true),
                  ],
                ),
                Row(
                  children: [
                    BuildButton('1', true),
                    BuildButton('2', true),
                    BuildButton('3', true),
                    BuildButton('+', true),
                  ],
                ),
                Row(
                  children: [
                    BuildButton('C', true),
                    BuildButton('0', true),
                    BuildButton('.', true),
                    BuildButton('=', true),
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
