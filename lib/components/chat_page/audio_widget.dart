import 'package:flutter/material.dart';

import 'package:chat_app/components/chat_page/audio_player.dart';
import 'package:chat_app/core/colors.dart';

class ChatAudioWidget extends StatelessWidget {
  const ChatAudioWidget({
    super.key,
    this.audio,
    required this.isSender,
    this.isGroup = false,
    required this.wave,
    required this.time,
    required this.messageId,
  });
  final String? audio;
  final bool isSender;
  final bool isGroup;
  final List<double> wave;
  final String time;
  final String messageId;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final color = isSender ? Colors.white : null;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.chatColor(context, isSender),
        borderRadius: BorderRadius.circular(17),
      ),
      constraints: BoxConstraints(
        minHeight: 65,
        maxWidth: size.width * 0.79,
        minWidth: size.width * 0.3,
      ),
      margin: isGroup ? null : EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 15),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: AppAudioPlayer(
              messageId: messageId,
              audioUrl: audio!,
              wave: wave,
              isSender: isSender,
            ),
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
                if (isSender)
                  Icon(
                    Icons.check,
                    size: 13,
                    color: Colors.blue,
                  ),
                Text(
                  time,
                  style: TextStyle(fontSize: 12, color: color),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
