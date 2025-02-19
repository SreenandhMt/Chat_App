import 'package:flutter/material.dart';

class AppColors {
  static Color primary(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? Color.fromARGB(255, 55, 95, 255)
          : Color.fromARGB(255, 0, 45, 227);
  static final Color secondary = Color.fromARGB(205, 55, 95, 255);
  static Color grey(context) => Theme.of(context).brightness == Brightness.dark
      ? Color.fromARGB(255, 21, 32, 51)
      : Colors.grey.shade200;
}
