import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:intl/intl.dart';

class ChatModel {
  final String chatId;
  final int createdAt;
  final bool isGroup;
  final String lastMessage;
  final String lastMessageSender;
  final int lastMessageTime;
  final List<String> participants;
  final UserModels? userModel;
  //group
  final String? groupImage;
  final String? groupName;
  final String? groupDescription;
  final bool? memberCanAddMember;
  final bool? memberCanEdit;
  final bool? memberCanMessage;
  final int? unreadCount;
  final int order;
  final int messageCount;
  final List<String> membersHistory;
  final List<String> blockedGroupMembers;
  final List<String> admins;
  final String createdBy;
  final List<Map<String, dynamic>>? joinedDate;
  final bool muted;
  final List<String> isSeenBy;
  final String date;

  factory ChatModel.fromJson(Map<String, dynamic> json, int? count,
          {UserModels? userModel}) =>
      ChatModel(
        chatId: json["chatId"],
        createdAt: json["createdAt"],
        isGroup: json["isGroup"],
        lastMessage: json["lastMessage"],
        lastMessageSender: json["lastMessageSender"],
        lastMessageTime: json["lastMessageTime"],
        participants: List<String>.from(json["participants"]),
        groupImage: json["groupImage"],
        groupName: json["groupName"],
        groupDescription: json["groupDescription"],
        memberCanAddMember: json["memberCanAddMember"],
        memberCanEdit: json["memberCanEdit"],
        memberCanMessage: json["memberCanMessage"],
        unreadCount: json["messageCount"] != null && count != null
            ? (json["messageCount"] as int) - count
            : null,
        messageCount: (json["messageCount"] as int),
        order: json["order"],
        blockedGroupMembers: List<String>.from(json["blocked"] ?? []),
        membersHistory: List<String>.from(json["history"] ?? []),
        admins: List<String>.from(json["admins"] ?? []),
        createdBy: json["createdBy"] ?? "",
        joinedDate: json["joinedDate"] != null
            ? List<Map<String, dynamic>>.from(json["joinedDate"] ?? [])
            : null,
        muted: json["muted"] != null
            ? List<String>.from(json["muted"] ?? [])
                .contains(FirebaseAuth.instance.currentUser!.uid)
            : true,
        isSeenBy: List<String>.from(json["isSeenBy"] ?? []),
        userModel: userModel,
        date: json["lastMessageTime"] != null
            ? formatChatTime(
                DateTime.fromMicrosecondsSinceEpoch(json["lastMessageTime"]))
            : formatChatTime(DateTime.now()),
      );

  ChatModel(
      {required this.chatId,
      required this.createdAt,
      required this.isGroup,
      required this.lastMessage,
      required this.lastMessageSender,
      required this.lastMessageTime,
      required this.participants,
      required this.groupImage,
      required this.groupName,
      required this.groupDescription,
      required this.memberCanAddMember,
      required this.memberCanEdit,
      required this.memberCanMessage,
      required this.unreadCount,
      required this.order,
      required this.messageCount,
      required this.membersHistory,
      required this.blockedGroupMembers,
      required this.admins,
      required this.createdBy,
      required this.joinedDate,
      required this.muted,
      required this.isSeenBy,
      required this.userModel,
      required this.date});

  ChatModel copyWith({
    String? chatId,
    int? createdAt,
    bool? isGroup,
    String? lastMessage,
    String? lastMessageSender,
    int? lastMessageTime,
    List<String>? participants,
    ValueGetter<String?>? groupImage,
    ValueGetter<String?>? groupName,
    ValueGetter<String?>? groupDescription,
    ValueGetter<bool?>? memberCanAddMember,
    ValueGetter<bool?>? memberCanEdit,
    ValueGetter<bool?>? memberCanMessage,
    ValueGetter<int?>? unreadCount,
    int? order,
    int? messageCount,
    List<String>? membersHistory,
    List<String>? blockedGroupMembers,
    List<String>? admins,
    String? createdBy,
    bool? muted,
    UserModels? userModel,
  }) {
    return ChatModel(
        chatId: chatId ?? this.chatId,
        createdAt: createdAt ?? this.createdAt,
        isGroup: isGroup ?? this.isGroup,
        lastMessage: lastMessage ?? this.lastMessage,
        lastMessageSender: lastMessageSender ?? this.lastMessageSender,
        lastMessageTime: lastMessageTime ?? this.lastMessageTime,
        participants: participants ?? this.participants,
        groupImage: groupImage != null ? groupImage() : this.groupImage,
        groupName: groupName != null ? groupName() : this.groupName,
        groupDescription: groupDescription != null
            ? groupDescription()
            : this.groupDescription,
        memberCanAddMember: memberCanAddMember != null
            ? memberCanAddMember()
            : this.memberCanAddMember,
        memberCanEdit:
            memberCanEdit != null ? memberCanEdit() : this.memberCanEdit,
        memberCanMessage: memberCanMessage != null
            ? memberCanMessage()
            : this.memberCanMessage,
        unreadCount: unreadCount != null ? unreadCount() : this.unreadCount,
        order: order ?? this.order,
        messageCount: messageCount ?? this.messageCount,
        membersHistory: membersHistory ?? this.membersHistory,
        blockedGroupMembers: blockedGroupMembers ?? this.blockedGroupMembers,
        admins: admins ?? this.admins,
        createdBy: createdBy ?? this.createdBy,
        joinedDate: joinedDate,
        muted: muted ?? this.muted,
        isSeenBy: isSeenBy,
        userModel: userModel ?? this.userModel,
        date: date);
  }

  static String formatChatTime(DateTime date) {
    final now = DateTime.now();

    final dateOnly = DateTime(date.year, date.month, date.day);
    final nowDateOnly = DateTime(now.year, now.month, now.day);

    final difference = nowDateOnly.difference(dateOnly).inDays;

    if (difference == 0) {
      return DateFormat('hh:mm a').format(date);
    } else if (difference == 1) {
      return "Yesterday";
    } else {
      return DateFormat('dd/MM/yy').format(date);
    }
  }
}
