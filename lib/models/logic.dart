import 'package:flutter/material.dart';
import 'dart:math';
import 'package:calculator/models/converts.dart';

class CalculatorLogic extends ChangeNotifier {
  String decimalOutput = '';
  String binaryOutput = '';
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = '';
  bool flag = false;
  Converts convert = Converts();

  double decimalCalc() {
    double result;
    if (operand == '+') {
      result = num1 + num2;
    } else if (operand == '-') {
      result = num1 - num2;
    } else if (operand == '×') {
      result = num1 * num2;
    } else if (operand == '÷') {
      result = num1 / num2;
    } else if (operand == '^') {
      result = pow(num1, num2);
    }
    return result;
  }

  double binaryCalc() {
    num1 = convert.binaryToDecimal(num1);
    num2 = convert.binaryToDecimal(num2);
    double result;
    int temp;
    if (operand == '+') {
      result = num1 + num2;
    } else if (operand == '-') {
      result = num1 - num2;
    } else if (operand == '×') {
      result = num1 * num2;
    } else if (operand == '÷') {
      result = num1 / num2;
    } else if (operand == '^') {
      result = pow(num1, num2);
    } else if (operand == '&') {
      temp = num1.floor() & num2.floor();
      result = temp.floorToDouble();
    } else if (operand == '|') {
      temp = num1.floor() | num2.floor();
      result = temp.floorToDouble();
    } else if (operand == 'xor') {
      temp = num1.floor() ^ num2.floor();
      result = temp.floorToDouble();
    } else if (operand == '<<') {
      temp = num1.floor() << num2.floor();
      result = temp.floorToDouble();
    } else if (operand == '>>') {
      result = num1 / pow(2, num2);
    }
    result = convert.decimalToBinary(result);
    print(result);
    return result;
  }

  String calculatorLogic(String input, String output, String type) {
    if (input == 'C') {
      output = '';
      num1 = 0.0;
      num2 = 0.0;
      operand = '';
    } else if (input == '^' ||
        input == '÷' ||
        input == '×' ||
        input == '-' ||
        input == '+' ||
        input == '&' ||
        input == '|' ||
        input == 'xor' ||
        input == '<<' ||
        input == '>>') {
      num1 = double.parse(output);
      operand = input;
      output = '';
    } else if (input == '.') {
      if (output.contains('.')) {
        return null;
      }
      output += input;
    } else if (input == '=') {
      num2 = double.parse(output);
      if (type == 'D')
        output = decimalCalc().toString();
      else
        output = binaryCalc().toString();
      flag = true;
    } else if (input == '+/-') {
      int temp = int.parse(output);
      temp *= -1;
      output = temp.toString();
    } else if (input == '~') {
      num1 = double.parse(output);
      int temp = num1.floor();
      temp = convert.notBites(temp);
      double result = temp.floorToDouble();
      output = result.toString();
    } else if (input == '√') {
      num1 = double.parse(output);
      double temp = sqrt(num1);
      output = temp.toString();
    } else {
      if (flag == false)
        output += input;
      else {
        output = input;
        flag = false;
      }
    }
    return output;
  }

  void decimalInput(String input) {
    decimalOutput = calculatorLogic(input, decimalOutput, 'D');
    notifyListeners();
  }

  void binaryInput(String input) {
    binaryOutput = calculatorLogic(input, binaryOutput, 'B');
    notifyListeners();
  }
}
