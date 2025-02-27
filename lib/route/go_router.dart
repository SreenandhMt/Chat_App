import 'package:chat_app/features/auth/views/create_profile_page.dart';
import 'package:chat_app/features/auth/views/introduction_page.dart';
import 'package:chat_app/features/auth/views/number_verification_page.dart';
import 'package:chat_app/features/auth/views/otp_verification_page.dart';
import 'package:chat_app/features/chat_page/views/chat_page.dart';
import 'package:chat_app/features/group_chat/views/add_members.dart';
import 'package:chat_app/features/group_chat/views/all_group_members.dart';
import 'package:chat_app/features/group_chat/views/banned_members.dart';
import 'package:chat_app/features/group_chat/views/group_chat.dart';
import 'package:chat_app/features/group_chat/views/group_info_page.dart';
import 'package:chat_app/features/home/views/home_page.dart';
import 'package:chat_app/features/splash_screen/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(initialLocation: "/splash", routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: "/chat",
      builder: (context, state) => ChattingPage(),
    ),
    GoRoute(
      path: "/group-chat",
      builder: (context, state) => GroupChatPage(),
      routes: [
        GoRoute(
          path: "/info",
          builder: (context, state) => GroupInfoPage(),
        ),
        GoRoute(
          path: "/members",
          builder: (context, state) => AllGroupMembers(),
        ),
        GoRoute(
          path: "/banned",
          builder: (context, state) => BannedMembers(),
        ),
        GoRoute(
          path: "/add-member",
          builder: (context, state) => AddMembersPage(),
        ),
      ],
    ),
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
