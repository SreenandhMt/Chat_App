import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationUtils {
  //auth
  static introductionPage(BuildContext context) => context.go("/introduction");
  static phoneVerificationPage(BuildContext context) =>
      context.push("/introduction/verification-number");
  static otpVerificationPage(BuildContext context) =>
      context.push("/introduction/verification-otp");
  static createProfilePage(BuildContext context) =>
      context.push("/introduction/create-profile");
}
