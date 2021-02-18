import 'package:calculator/models/logic.dart';
import 'package:flutter/material.dart';
import 'package:calculator/screens/decimal_screen.dart';
import 'package:calculator/screens/binary_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CalculatorLogic>(
      create: (context) => CalculatorLogic(),
      child: MaterialApp(
        home: DecimalScreen(),
      ),
    );
  }
}
