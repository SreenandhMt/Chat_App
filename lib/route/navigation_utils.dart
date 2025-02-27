import 'package:chat_app/features/group_chat/views/add_members.dart';
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
}
