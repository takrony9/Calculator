import 'package:strings/strings.dart';

class Converts {
  double binaryToDecimal(double num) {
    int binaryValue = num.floor();
    int decimalValue = 0;
    int i = 1;
    while (binaryValue > 0) {
      decimalValue = decimalValue + (binaryValue % 10) * i;
      binaryValue = (binaryValue / 10).floor();
      i = i * 2;
    }
    return decimalValue.floorToDouble();
  }

  double decimalToBinary(double num) {
    int decimalValue = num.floor();
    int binaryValue = 0;
    int i = 1;
    while (decimalValue > 0) {
      binaryValue = binaryValue + (decimalValue % 2) * i;
      decimalValue = (decimalValue / 2).floor();
      i = i * 10;
    }
    return binaryValue.floorToDouble();
  }

  int notBites(int x) {
    String y = '';
    while (x > 0) {
      if ((x % 10) == 1)
        y += '0';
      else
        y += '1';
      x = (x / 10).floor();
    }
    y = reverse(y);
    x = int.parse(y);
    return x;
  }
}
