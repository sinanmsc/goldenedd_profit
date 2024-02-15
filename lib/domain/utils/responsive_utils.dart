import 'package:flutter/material.dart';

class Responsive {
  static double width(double percentage, BuildContext context) {
    return MediaQuery.of(context).size.width * (percentage / 100);
  }

  static double height(double percentage, BuildContext context) {
    return MediaQuery.of(context).size.height * (percentage / 100);
  }
}
