import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith();

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color.fromARGB(255, 13, 21, 34),
    popupMenuTheme: PopupMenuThemeData(
      color: Color.fromARGB(255, 13, 21, 34),
      surfaceTintColor: Color.fromARGB(255, 13, 21, 34),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Color.fromARGB(255, 13, 21, 34),
      surfaceTintColor: Color.fromARGB(255, 13, 21, 34),
    ),
  );
}
