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
import 'package:chat_app/features/group_chat/views/add_members.dart';
import 'package:chat_app/features/group_chat/views/all_group_members.dart';
import 'package:chat_app/features/group_chat/views/banned_members.dart';
import 'package:chat_app/features/group_chat/views/create_group.dart';
import 'package:chat_app/features/group_chat/views/group_chat.dart';
import 'package:chat_app/features/group_chat/views/group_info_page.dart';
import 'package:chat_app/features/home/views/home_page.dart';
import 'package:chat_app/features/settings/views/about_page.dart';
import 'package:chat_app/features/settings/views/app_lock_settings.dart';
import 'package:chat_app/features/settings/views/edit_profile_page.dart';
import 'package:chat_app/features/settings/views/notification_setting.dart';
import 'package:chat_app/features/settings/views/security_settings.dart';
import 'package:chat_app/features/settings/views/settings_page.dart';
import 'package:chat_app/features/settings/views/wallpaper.dart';
import 'package:chat_app/features/splash_screen/views/splash_screen.dart';
import 'package:chat_app/features/status/views/status_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/calls_screen/views/call_logs.dart';

class AppRouter {
  static final router = GoRouter(initialLocation: "/splash", routes: [
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => Scaffold(
              body: Stack(
                children: [
                  navigationShell,
                  if (2 == 1) //disabled
                    Positioned(
                        top: MediaQuery.paddingOf(context).top * 0.8,
                        right: 0,
                        left: 0,
                        child: Card(
                          child: Container(
                            // height: 150,
                            padding: EdgeInsets.all(10),
                            width: double.infinity,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    "George Allen",
                                    style: AppFonts.titleFont(context),
                                  ),
                                  subtitle: Row(
                                    spacing: 10,
                                    children: [
                                      Icon(
                                        Icons.call,
                                        size: 15,
                                      ),
                                      Text("Incoming Voice Call")
                                    ],
                                  ),
                                  trailing: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage(
                                        "https://randomuser.me/api/portraits/men/20.jpg"),
                                  ),
                                ),
                                height10,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: MaterialButton(
                                        onPressed: () {},
                                        color: Colors.red,
                                        height: 45,
                                        shape: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Text("Cancel"),
                                      ),
                                    ),
                                    width10,
                                    Expanded(
                                      flex: 1,
                                      child: MaterialButton(
                                        onPressed: () {},
                                        color: Colors.green,
                                        height: 45,
                                        shape: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide: BorderSide.none),
                                        child: Text("Delete & Exit"),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ))
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: navigationShell.currentIndex,
                onTap: (value) => navigationShell.goBranch(value),
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.chat_bubble), label: "Chats"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.circle_outlined), label: "Status"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.call), label: "Calls"),
                ],
              ),
            ),
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
