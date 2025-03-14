import 'package:chat_app/core/fonts.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/views/create_profile_page.dart';
import 'package:chat_app/features/auth/views/introduction_page.dart';
import 'package:chat_app/features/auth/views/number_verification_page.dart';
import 'package:chat_app/features/auth/views/otp_verification_page.dart';
import 'package:chat_app/features/calls_screen/views/call_details.dart';
import 'package:chat_app/features/calls_screen/views/video_call_page.dart';
import 'package:chat_app/features/calls_screen/views/voice_call_page.dart';
import 'package:chat_app/features/chat_page/views/chat_page.dart';
import 'package:chat_app/features/chat_page/views/user_info.dart';
import 'package:chat_app/features/contact/views/saved_contacts.dart';
import 'package:chat_app/features/contact/views/add_members.dart';
import 'package:chat_app/features/group_chat/views/all_group_members.dart';
import 'package:chat_app/features/group_chat/views/banned_members.dart';
import 'package:chat_app/features/group_chat/views/create_group.dart';
import 'package:chat_app/features/group_chat/views/group_chat.dart';
import 'package:chat_app/features/group_chat/views/group_info_page.dart';
import 'package:chat_app/features/home/views/home_page.dart';
import 'package:chat_app/features/main/bottom_navigation.dart';
import 'package:chat_app/features/settings/views/about_page.dart';
import 'package:chat_app/features/settings/views/app_lock_settings.dart';
import 'package:chat_app/features/settings/views/edit_profile_page.dart';
import 'package:chat_app/features/settings/views/notification_setting.dart';
import 'package:chat_app/features/settings/views/security_settings.dart';
import 'package:chat_app/features/settings/views/settings_page.dart';
import 'package:chat_app/features/settings/views/wallpaper.dart';
import 'package:chat_app/features/splash_screen/views/splash_screen.dart';
import 'package:chat_app/features/status/views/status_page.dart';
import 'package:go_router/go_router.dart';

import '../features/calls_screen/views/call_logs.dart';

class AppRouter {
  static final router = GoRouter(initialLocation: "/splash", routes: [
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            MainPageConfiguration(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(
              path: "/",
              builder: (context, state) => HomePage(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: "/status",
              builder: (context, state) => StatusPage(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: "/calls",
              builder: (context, state) => CallLogsScreen(),
            ),
          ]),
        ]),
    GoRoute(
      path: "/video-call",
      builder: (context, state) => VideoCallPage(),
    ),
    GoRoute(
      path: "/voice-call",
      builder: (context, state) => VoiceCallPage(),
    ),
    GoRoute(
      path: "/calls/details",
      builder: (context, state) => CallDetailsPage(),
    ),
    GoRoute(
      path: "/create-group",
      builder: (context, state) => CreateGroupPage(),
    ),
    GoRoute(
        path: "/chat",
        builder: (context, state) => ChattingPage(),
        routes: [
          GoRoute(
            path: "/profile",
            builder: (context, state) => UserProfile(),
          ),
        ]),
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
    GoRoute(
      path: "/invite",
      builder: (context, state) => InviteSavedContacts(),
    ),
    GoRoute(
        path: "/settings",
        builder: (context, state) => SettingsPage(),
        routes: [
          GoRoute(
              path: "/security",
              builder: (context, state) => SecuritySettings(),
              routes: [
                GoRoute(
                  path: "/pin",
                  builder: (context, state) => AppLockSettings(),
                ),
              ]),
          GoRoute(
            path: "/notification",
            builder: (context, state) => NotificationSetting(),
          ),
          GoRoute(
            path: "/wallpaper",
            builder: (context, state) => WallpaperSettings(),
          ),
          GoRoute(
            path: "/aboutus",
            builder: (context, state) => AboutPage(),
          ),
          GoRoute(
            path: "/profile",
            builder: (context, state) => EditProfilePage(),
          ),
        ]),
    GoRoute(
      path: "/intro",
      builder: (context, state) => IntroductionPage(),
    ),
  ]);
}
