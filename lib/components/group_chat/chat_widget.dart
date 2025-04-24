import 'package:flutter/material.dart';

import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/chat_page/models/message_model.dart';

import '../../core/colors.dart';
import '../chat_page/chat_widget.dart';

class GroupChatWidget extends StatefulWidget {
  const GroupChatWidget({
    super.key,
    required this.sender,
    required this.messageModel,
  });
  final UserModels? sender;
  final MessageModel messageModel;

  @override
  State<GroupChatWidget> createState() => GroupChatWidgetState();
}

class GroupChatWidgetState extends State<GroupChatWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    List<String> reactions = [];
    if (widget.messageModel.reactions != null &&
        widget.messageModel.reactions!.isNotEmpty) {
      Map<String, dynamic> reactionMap = widget.messageModel.reactions!;
      for (var i = 0; i < reactionMap.length; i++) {
        String userId = reactionMap.keys.elementAt(i);
        reactions.add(reactionMap[userId]!);
      }
    }
    if (widget.messageModel.messageType == "log") {
      return Align(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            widget.messageModel.message ?? "",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
      );
    }
    if (widget.messageModel.isSender) {
      return Align(
        alignment: widget.messageModel.isSender
            ? Alignment.centerRight
            : Alignment.centerLeft,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 30,
            maxWidth: size.width * 0.79,
            minWidth: widget.messageModel.messageType == "typing"
                ? 10
                : size.width * 0.3,
          ),
          child: Stack(
            children: [
              ChatItem(
                messageModel: widget.messageModel,
                messageType: widget.messageModel.messageType,
                message: widget.messageModel.message,
                isSender: widget.messageModel.isSender,
                isGroup: true,
                wave: widget.messageModel.wave,
                size: widget.messageModel.width != null &&
                        widget.messageModel.height != null
                    ? Size(widget.messageModel.width!.toDouble(),
                        widget.messageModel.height!.toDouble())
                    : null,
              ),
              if (reactions.isNotEmpty &&
                  widget.messageModel.messageType != "delete")
                Positioned(
                    bottom: 0,
                    right: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.grey(context),
                          borderRadius: BorderRadius.circular(20)),
                      padding:
                          EdgeInsets.only(left: 5, right: 5, bottom: 3, top: 3),
                      child: Row(
                        spacing: 4,
                        children: List.generate(
                          reactions.length <= 4 ? reactions.length : 4,
                          (index) => Text(reactions[index]),
                        ),
                      ),
                    ))
            ],
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: CircleAvatar(
              backgroundImage: widget.sender == null
                  ? null
                  : NetworkImage(widget.sender!.imageUrl ?? ""),
            ),
          ),
          width5,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.sender == null ? "Removed User" : widget.sender!.name,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.yellow),
              ),
              height5,
              Align(
                alignment: widget.messageModel.isSender
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 30,
                    maxWidth: size.width * 0.79,
                    minWidth: widget.messageModel.messageType == "typing"
                        ? 10
                        : size.width * 0.3,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: ChatItem(
                          messageModel: widget.messageModel,
                          messageType: widget.messageModel.messageType,
                          isGroup: true,
                          isSender: widget.messageModel.isSender,
                          message: widget.messageModel.message,
                          wave: widget.messageModel.wave,
                          size: widget.messageModel.height == null &&
                                  widget.messageModel.height == null
                              ? null
                              : Size(widget.messageModel.width!.toDouble(),
                                  widget.messageModel.height!.toDouble()),
                        ),
                      ),
                      if (reactions.isNotEmpty &&
                          widget.messageModel.messageType != "delete")
                        Positioned(
                            bottom: 0,
                            right: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.grey(context),
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.only(
                                  left: 5, right: 5, bottom: 3, top: 3),
                              child: Row(
                                spacing: 4,
                                children: List.generate(
                                  reactions.length <= 4 ? reactions.length : 4,
                                  (index) => Text(reactions[index]),
                                ),
                              ),
                            ))
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
