import 'package:chat_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle titleFont(context) =>
      GoogleFonts.outfit(fontSize: 20, fontWeight: FontWeight.w600);
  static TextStyle appBarStyle(context) =>
      GoogleFonts.outfit(fontSize: 25, fontWeight: FontWeight.w700);
  static TextStyle buttonStyle(context) => GoogleFonts.outfit(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColors.primary(context),
      );
  static TextStyle subtitleStyle(context) =>
      GoogleFonts.quicksand(fontSize: 16, fontWeight: FontWeight.w400);
}
