import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

import 'package:chat_app/features/auth/models/user_models.dart';

class CallModel {
  final String callType;
  final String callerId;
  final bool isCaller;
  final Timestamp? endTime;
  final String historyId;
  final Map participants;
  final String status;
  final Timestamp startTime;
  final UserModels? userModels;
  final List<dynamic> participantsID;
  final String? groupName;
  final String? groupImage;
  final String? groupId;
  final bool isVideoCall;
  final String token;
  final List<UserModels> groupCallMembers;
  final Map<String, dynamic>? map;
  final String? date;
  final String callDuration;

  CallModel({
    required this.callType,
    required this.callerId,
    required this.isCaller,
    required this.endTime,
    required this.historyId,
    required this.participants,
    required this.status,
    required this.startTime,
    this.userModels,
    required this.participantsID,
    this.groupName,
    this.groupImage,
    this.groupId,
    required this.isVideoCall,
    required this.token,
    required this.groupCallMembers,
    this.map,
    required this.date,
    required this.callDuration,
  });

  Duration get callDurations {
    if (endTime != null) {
      return DateTime.now().difference(startTime.toDate());
    }
    return Duration.zero;
  }

  factory CallModel.fromMap(Map<String, dynamic> map,
      {UserModels? user, List<UserModels>? groupCallMembers}) {
    final date = DateFormat("MMMM d, y, h:mm a")
        .format((map['startTime'] as Timestamp).toDate());
    String duration = "";
    if ((map['endTime'] is Timestamp)) {
      final difference = (map['endTime'] as Timestamp)
          .toDate()
          .difference((map['startTime'] as Timestamp).toDate());
      final hours = difference.inHours;
      final minutes = difference.inMinutes.remainder(60);
      final seconds = difference.inSeconds.remainder(60);

      duration = hours == 0
          ? "$minutes:${seconds.toString().padLeft(2, '0')}m"
          : "$hours:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}h";
    }
    return CallModel(
      callType: map['callType'],
      callerId: map['callerId'],
      callDuration: duration,
      date: date,
      isCaller: (FirebaseAuth.instance.currentUser!.uid == map['callerId']),
      endTime: map['endTime'],
      historyId: map['historyId'] ?? map['callId'],
      participants: map['participants'],
      participantsID: map["participantsID"],
      status: map['status'],
      startTime: map['startTime'],
      groupId: map["groupId"],
      groupImage: map["groupImage"],
      groupName: map["groupName"],
      userModels: user,
      isVideoCall: map["isVideoCall"] ?? false,
      token: map["token"] ?? "",
      groupCallMembers: groupCallMembers ?? [],
      map: map,
    );
  }
}
