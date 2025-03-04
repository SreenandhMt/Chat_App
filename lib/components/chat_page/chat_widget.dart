import 'package:flutter/material.dart';
import 'package:chat_app/components/chat_page/audio_widget.dart';
import 'package:chat_app/components/chat_page/document_widget.dart';
import 'package:chat_app/components/chat_page/image_widget.dart';
import 'package:chat_app/components/chat_page/link_preview.dart';
import 'package:chat_app/components/chat_page/poll_widget.dart';
import 'package:chat_app/components/chat_page/sticker_widget.dart';
import 'package:chat_app/components/chat_page/text_chat_widget.dart';
import 'package:chat_app/components/chat_page/video_widget.dart';

import '../../core/colors.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({
    super.key,
    this.isSender = false,
    this.image,
    this.audio,
    this.url,
    this.pollData,
    this.pdf,
    this.sticker,
    this.video,
  });
  final bool isSender;
  final String? image;
  final String? audio;
  final String? url;
  final bool? pollData;
  final String? pdf;
  final String? sticker;
  final String? video;

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Align(
      alignment: widget.isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 69,
          maxWidth: size.width * 0.79,
          minWidth: size.width * 0.3,
        ),
        child: Stack(
          children: [
            ChatItem(
                audio: widget.audio,
                image: widget.image,
                isSender: widget.isSender,
                pdf: widget.pdf,
                pollData: widget.pollData,
                sticker: widget.sticker,
                url: widget.url,
                video: widget.video),
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
                    children: [
                      Text("😆"),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class ChatItem extends StatefulWidget {
  const ChatItem({
    super.key,
    this.isSender = false,
    this.image,
    this.audio,
    this.url,
    this.pollData,
    this.pdf,
    this.sticker,
    this.video,
    this.isGroup = false,
  });
  final bool isSender;
  final String? image;
  final String? audio;
  final String? url;
  final bool? pollData;
  final String? pdf;
  final String? sticker;
  final String? video;
  final bool isGroup;

  @override
  State<ChatItem> createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  @override
  Widget build(BuildContext context) {
    if (widget.video != null) {
      return ChatVideoWidget(
        video: widget.video!,
        isSender: widget.isSender,
        isGroup: widget.isGroup,
      );
    }
    if (widget.sticker != null) {
      return StickerWidget(
          isSender: widget.isSender,
          sticker: widget.sticker!,
          isGroup: widget.isGroup);
    }
    if (widget.pdf != null) {
      return DocumentWidget(isSender: widget.isSender, isGroup: widget.isGroup);
    }
    if (widget.pollData != null) {
      return PollWidget(isSender: widget.isSender, isGroup: widget.isGroup);
    }
    if (widget.url != null) {
      return LinkPreviewWidget(
          link: widget.url!,
          isSender: widget.isSender,
          isGroup: widget.isGroup);
    }
    if (widget.audio != null) {
      return ChatAudioWidget(
          isSender: widget.isSender,
          audio: widget.audio,
          isGroup: widget.isGroup);
    }
    if (widget.image != null) {
      return ChatImageWidget(
          image: widget.image!,
          isSender: widget.isSender,
          isGroup: widget.isGroup);
    }
    return TextChatWidget(
        isSender: widget.isSender, text: "", isGroup: widget.isGroup);
  }
}
