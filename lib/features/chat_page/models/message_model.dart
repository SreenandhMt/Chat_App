import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

class MessageModel {
  final String id;
  final String messageType;
  final Map<String, dynamic>? reactions;
  final List<String> isSeenBy;
  final String senderId;
  final bool isSender;
  final int timestamp;
  final String time;
  final String? message;

  //* // text message done

  //* //image message done

  //* //video message done

  //* //link preview done
  final String? linkPreviewTitle;
  final String? linkPreviewDescription;
  final String? linkPreviewUrl;

  //* //document done only
  final String? documentType;
  final String? documentName;

  //* //poll done
  final Map<String, dynamic>? options;
  final Map<String, dynamic>? votes;

  //*voice audio done
  final List<double>? wave;
  final int? duration;

  //! //group data
  final String? groupName;
  final String? groupDescription;
  final String? groupImage;
  final bool? memberCanEdit;
  final bool? memberCanAddMember;
  final bool? memberCanMessage;

  //* video, image, and link preview size
  final int? width;
  final int? height;

  MessageModel({
    required this.id,
    required this.messageType,
    required this.reactions,
    required this.isSeenBy,
    required this.senderId,
    required this.isSender,
    required this.timestamp,
    required this.time,
    required this.message,
    this.linkPreviewTitle,
    this.linkPreviewDescription,
    this.linkPreviewUrl,
    this.documentType,
    this.documentName,
    this.options,
    this.votes,
    this.wave,
    this.duration,
    this.groupName,
    this.groupDescription,
    this.groupImage,
    this.memberCanEdit,
    this.memberCanAddMember,
    this.memberCanMessage,
    this.width,
    this.height,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> options =
        Map<String, dynamic>.from(json["options"] ?? {});
    Map<String, dynamic> votes = Map<String, dynamic>.from(json["votes"] ?? {});
    final format = DateFormat.jm();
    var dateString =
        format.format(DateTime.fromMillisecondsSinceEpoch(json['timestamp']));
    return MessageModel(
      id: json['id'],
      messageType: json['messageType'],
      reactions: json['reactions'],
      time: dateString,
      isSeenBy: List<String>.from(json['isSeenBy']),
      senderId: json['senderId'],
      isSender: json["senderId"] == FirebaseAuth.instance.currentUser!.uid,
      timestamp: json['timestamp'],
      message: json['message'],
      linkPreviewDescription: json["preview-description"],
      linkPreviewTitle: json['preview-title'],
      linkPreviewUrl: json['preview-imageUrl'],
      documentType: json['documentType'],
      documentName: json["documentName"],
      options: options,
      votes: votes,
      wave: (json['wave'] is List)
          ? (json['wave'] as List)
              .whereType<num>()
              .map((e) => (e).toDouble())
              .toList()
          : [],
      width: json['width']?.toInt(),
      height: json['height']?.toInt(),
    );
  }
}
