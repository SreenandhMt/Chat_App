import 'package:chat_app/components/chat_page/deleted_message.dart';
import 'package:chat_app/components/chat_page/typing_widget.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/components/chat_page/audio_widget.dart';
import 'package:chat_app/components/chat_page/document_widget.dart';
import 'package:chat_app/components/chat_page/image_widget.dart';
import 'package:chat_app/components/chat_page/link_preview.dart';
import 'package:chat_app/components/chat_page/poll_widget.dart';
import 'package:chat_app/components/chat_page/sticker_widget.dart';
import 'package:chat_app/components/chat_page/text_chat_widget.dart';
import 'package:chat_app/components/chat_page/video_widget.dart';
import 'package:chat_app/features/chat_page/models/message_model.dart';

import '../../core/colors.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    super.key,
    required this.messageModel,
  });
  final MessageModel messageModel;

  @override
  Widget build(BuildContext context) {
    List<String> reactions = [];
    if (messageModel.reactions != null && messageModel.reactions!.isNotEmpty) {
      Map<String, dynamic> reactionMap = messageModel.reactions!;
      for (var i = 0; i < reactionMap.length; i++) {
        String userId = reactionMap.keys.elementAt(i);
        reactions.add(reactionMap[userId]!);
      }
    }
    final size = MediaQuery.sizeOf(context);
    if (messageModel.messageType == "typing" && messageModel.isSender) {
      return const SizedBox.shrink();
    }
    if (messageModel.messageType == "log") {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(5)),
            child: Text(
              messageModel.message ?? "",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          )
        ],
      );
    }
    return Align(
      alignment:
          messageModel.isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 30,
          maxWidth: size.width * 0.79,
          minWidth:
              messageModel.messageType == "typing" ? 10 : size.width * 0.3,
        ),
        child: Stack(
          children: [
            ChatItem(
              messageModel: messageModel,
              messageType: messageModel.messageType,
              message: messageModel.message,
              isSender: messageModel.isSender,
              wave: messageModel.wave,
              size: messageModel.width != null && messageModel.height != null
                  ? Size(messageModel.width!.toDouble(),
                      messageModel.height!.toDouble())
                  : null,
            ),
            if (reactions.isNotEmpty && messageModel.messageType != "delete")
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
}

class ChatItem extends StatelessWidget {
  const ChatItem({
    super.key,
    this.message,
    required this.messageType,
    this.isSender = false,
    this.size,
    this.isGroup = false,
    this.wave,
    required this.messageModel,
  });
  final String? message;
  final String messageType;
  final bool isSender;
  final Size? size;
  final bool isGroup;
  final List<double>? wave;
  final MessageModel messageModel;

  @override
  Widget build(BuildContext context) {
    if (messageType == "video") {
      return ChatVideoWidget(
          video: message!,
          isSender: isSender,
          isGroup: isGroup,
          videoSize: size,
          thumbnail: messageModel.thumbnail ?? "",
          time: messageModel.time);
    }
    if (messageType == "sticker") {
      return StickerWidget(
          isSender: isSender,
          sticker: message!,
          isGroup: isGroup,
          time: messageModel.time);
    }
    if (messageType == "document") {
      return DocumentWidget(
          isSender: isSender, isGroup: isGroup, messageModel: messageModel);
    }
    if (messageType == "poll") {
      return PollWidget(
        isSender: isSender,
        isGroup: isGroup,
        messageModel: messageModel,
      );
    }
    if (messageType == "link") {
      return LinkPreviewWidget(
        link: message!,
        isSender: isSender,
        isGroup: isGroup,
        description: messageModel.linkPreviewDescription,
        imageUrl: messageModel.linkPreviewUrl,
        title: messageModel.linkPreviewTitle,
        time: messageModel.time,
      );
    }
    if (messageType == "audio") {
      return ChatAudioWidget(
          isSender: isSender,
          audio: message!,
          isGroup: isGroup,
          wave: wave!,
          messageId: messageModel.id,
          time: messageModel.time);
    }
    if (messageType == "image") {
      return ChatImageWidget(
          image: message!,
          isSender: isSender,
          isGroup: isGroup,
          size: size,
          time: messageModel.time);
    }
    if (messageType == "delete") {
      return DeletedMessageLog(
          isSender: isSender, text: message!, isGroup: isGroup);
    }
    if (messageType == "typing") {
      return StatusTypingWidget(
        isSender: isSender,
        text: "Typing...",
        isGroup: isGroup,
        time: messageModel.time,
      );
    }
    return TextChatWidget(
        isSender: isSender,
        text: message!,
        isGroup: isGroup,
        time: messageModel.time);
  }
}
