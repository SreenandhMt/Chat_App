import 'package:flutter/material.dart';

import 'package:chat_app/components/chat_page/audio_player.dart';
import 'package:chat_app/core/colors.dart';

class ChatAudioWidget extends StatefulWidget {
  const ChatAudioWidget({
    super.key,
    this.audio,
    required this.isSender,
    this.isGroup = false,
  });
  final String? audio;
  final bool isSender;
  final bool isGroup;

  @override
  State<ChatAudioWidget> createState() => _ChatAudioWidgetState();
}

class _ChatAudioWidgetState extends State<ChatAudioWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.chatColor(context, widget.isSender),
        borderRadius: BorderRadius.circular(17),
      ),
      constraints: BoxConstraints(
        minHeight: 65,
        maxWidth: size.width * 0.79,
        minWidth: size.width * 0.3,
      ),
      margin: widget.isGroup ? null : EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 15),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: AppAudioPlayer(audioUrl: widget.audio!),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 5,
              children: [
                if (widget.isSender)
                  Icon(
                    Icons.check,
                    size: 13,
                    color: Colors.blue,
                  ),
                Text(
                  "10:00 AM",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
