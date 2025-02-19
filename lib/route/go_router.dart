import 'package:chat_app/features/auth/views/create_profile_page.dart';
import 'package:chat_app/features/auth/views/introduction_page.dart';
import 'package:chat_app/features/auth/views/number_verification_page.dart';
import 'package:chat_app/features/auth/views/otp_verification_page.dart';
import 'package:chat_app/features/splash_screen/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(initialLocation: "/splash", routes: [
    GoRoute(
      path: "/splash",
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
        path: "/introduction",
        builder: (context, state) => IntroductionPage(),
        routes: [
          GoRoute(
            path: "/verification-number",
            builder: (context, state) => NumberVerificationPage(),
          ),
          GoRoute(
            path: "/verification-otp",
            builder: (context, state) => OTPVerificationPage(),
          ),
          GoRoute(
            path: "/create-profile",
            builder: (context, state) => CreateProfilePage(),
          ),
        ]),
  ]);
}
