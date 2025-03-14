import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
class ChatModel with _$ChatModel {
  const factory ChatModel({
    required String chatId,
    required int createdAt,
    required bool isGroup,
    required String lastMessage,
    required String lastMessageSender,
    required int lastMessageTime,
    required List<String> participants,
    //group
    required String? groupImage,
    required String? groupName,
    required String? groupDescription,
    required bool? memberCanAddMember,
    required bool? memberCanEdit,
    required bool? memberCanMessage,
    required Map<String, dynamic>? unreadCount,
    required int order,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
