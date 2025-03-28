class ChatModel {
  final String chatId;
  final int createdAt;
  final bool isGroup;
  final String lastMessage;
  final String lastMessageSender;
  final int lastMessageTime;
  final List<String> participants;
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

  factory ChatModel.fromJson(Map<String, dynamic> json, int? count) =>
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
          order: json["order"]);

  ChatModel({
    required this.chatId,
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
  });
}
