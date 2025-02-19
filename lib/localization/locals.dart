import 'package:flutter_localization/flutter_localization.dart';

List<MapLocale> mapLocales = [
  MapLocale("en", LocaleData.EN),
];

mixin LocaleData {
  static String authText = "auth-text";

  static Map<String, dynamic> EN = {
    authText: "Login",
  };
}
