import 'package:calculator/models/logic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator/constants.dart';

class BuildButton extends StatelessWidget {
  final String input;
  final bool screen;
  BuildButton(this.input, this.screen);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: RaisedButton(
          textColor: Colors.white,
          color: KButtonColor,
          padding: EdgeInsets.all(20.0),
          child: Text(
            input,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          onPressed: () {
            if (screen) {
              Provider.of<CalculatorLogic>(context, listen: false)
                  .decimalInput(input);
            } else {
              Provider.of<CalculatorLogic>(context, listen: false)
                  .binaryInput(input);
            }
          },
        ),
      ),
    );
  }
}
