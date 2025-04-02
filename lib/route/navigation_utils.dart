import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationUtils {
  //splash
  static home(BuildContext context) => context.go("/");
  static appLock(BuildContext context) => context.go("/lock");
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

  //status
  static createStatusMedia(BuildContext context) =>
      context.push("/status-media");
  static createStatusCamera(BuildContext context) =>
      context.push("/status-camera");
  static statusViewPage(BuildContext context) => context.push("/status-view");
  static editImageStatus(BuildContext context) =>
      context.push("/status-edit-image");

  //Call log
  static callDetailsPage(BuildContext context) =>
      context.push("/calls/details");
  static videoCallPage(BuildContext context) => context.push("/video-call");
  static voiceCallPage(BuildContext context) => context.push("/voice-call");

  //media player
  static imageView(BuildContext context, String url) =>
      context.push("/image/${Uri.encodeComponent(url)}");
  static videoView(BuildContext context, String url) =>
      context.push("/video/${Uri.encodeComponent(url)}");

  //invite friends
  static inviteFriendsPage(BuildContext context) => context.push("/invite");

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
