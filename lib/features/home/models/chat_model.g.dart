// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      chatId: json['chatId'] as String,
      createdAt: (json['createdAt'] as num).toInt(),
      isGroup: json['isGroup'] as bool,
      lastMessage: json['lastMessage'] as String,
      lastMessageSender: json['lastMessageSender'] as String,
      lastMessageTime: (json['lastMessageTime'] as num).toInt(),
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      groupImage: json['groupImage'] as String?,
      groupName: json['groupName'] as String?,
      groupDescription: json['groupDescription'] as String?,
      memberCanAddMember: json['memberCanAddMember'] as bool?,
      memberCanEdit: json['memberCanEdit'] as bool?,
      memberCanMessage: json['memberCanMessage'] as bool?,
      unreadCount: json['unreadCount'] as Map<String, dynamic>?,
      order: (json['order'] as num).toInt(),
    );

Map<String, dynamic> _$$ChatModelImplToJson(_$ChatModelImpl instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'createdAt': instance.createdAt,
      'isGroup': instance.isGroup,
      'lastMessage': instance.lastMessage,
      'lastMessageSender': instance.lastMessageSender,
      'lastMessageTime': instance.lastMessageTime,
      'participants': instance.participants,
      'groupImage': instance.groupImage,
      'groupName': instance.groupName,
      'groupDescription': instance.groupDescription,
      'memberCanAddMember': instance.memberCanAddMember,
      'memberCanEdit': instance.memberCanEdit,
      'memberCanMessage': instance.memberCanMessage,
      'unreadCount': instance.unreadCount,
      'order': instance.order,
    };
