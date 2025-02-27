import 'package:flutter/material.dart';

class AppColors {
  static Color primary(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? Color.fromARGB(255, 55, 95, 255)
          : Color.fromARGB(255, 0, 45, 227);
  static Color secondary(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? Color.fromRGBO(104, 82, 214, 1)
          : Color.fromARGB(255, 0, 45, 227);
  static Color grey(context) => Theme.of(context).brightness == Brightness.dark
      ? Color.fromARGB(255, 21, 32, 51)
      : Colors.grey.shade200;
  static Color backgroundColor(context) =>
      Theme.of(context).scaffoldBackgroundColor;

  static Color chatBackgroundColor(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? Color.fromARGB(255, 20, 31, 49)
          : const Color.fromARGB(255, 234, 231, 231);
  static Color chatColor(context, bool isSender) {
    if (isSender) {
      return Theme.of(context).brightness == Brightness.dark
          ? Color.fromRGBO(104, 82, 214, 1)
          : Color.fromARGB(255, 0, 45, 227);
    } else {
      return Theme.of(context).brightness == Brightness.dark
          ? Color.fromARGB(255, 59, 59, 61)
          : Colors.grey.shade200;
    }
  }

  static Color themeColor(context) {
    return Theme.of(context).brightness == Brightness.light
        ? Colors.white
        : Colors.black;
  }
}
