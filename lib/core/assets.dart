import 'package:flutter/material.dart';

class AppAssets {
  static String introductionImage(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? "assets/auth/dark-Illustration.png"
          : "assets/auth/light-Illustration.png";

  static String logo(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? "assets/logo-light.png"
          : "assets/logo-dark.png";
}
