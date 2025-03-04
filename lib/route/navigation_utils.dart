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

  // chatting page
  static chattingPage(BuildContext context) => context.push("/chat");
  static userProfilePage(BuildContext context) => context.push("/chat/profile");

  //group
  static groupChattingPage(BuildContext context) => context.push("/group-chat");
  static groupInfoPage(BuildContext context) =>
      context.push("/group-chat/info");
  static groupMembersPage(BuildContext context) =>
      context.push("/group-chat/members");
  static groupBannedMembers(BuildContext context) =>
      context.push("/group-chat/banned");
  static addMembers(BuildContext context) =>
      context.push("/group-chat/add-member");
  static createGroupPage(BuildContext context) => context.push("/create-group");

  //Call log
  static callDetailsPage(BuildContext context) =>
      context.push("/calls/details");
  static videoCallPage(BuildContext context) => context.push("/video-call");
  static voiceCallPage(BuildContext context) => context.push("/voice-call");
  //settings
  static settingsPage(BuildContext context) => context.push("/settings");
  //security
  static securityPage(BuildContext context) =>
      context.push("/settings/security");
  static securityPinPage(BuildContext context) =>
      context.push("/settings/security/pin");
  static notificationSetting(BuildContext context) =>
      context.push("/settings/notification");
  static wallpaperSetting(BuildContext context) =>
      context.push("/settings/wallpaper");
  static aboutUs(BuildContext context) => context.push("/settings/aboutus");
  static profileSettings(BuildContext context) =>
      context.push("/settings/profile");
}
