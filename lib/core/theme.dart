import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
    titleTextStyle: GoogleFonts.outfit(
        fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black),
  ));

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color.fromARGB(255, 13, 21, 34),
    popupMenuTheme: PopupMenuThemeData(
      color: Color.fromARGB(255, 13, 21, 34),
      surfaceTintColor: Color.fromARGB(255, 13, 21, 34),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color.fromARGB(255, 13, 21, 34),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Color.fromARGB(255, 13, 21, 34),
      surfaceTintColor: Color.fromARGB(255, 13, 21, 34),
      titleTextStyle: GoogleFonts.signikaNegative(fontSize: 21),
    ),
  );
}
