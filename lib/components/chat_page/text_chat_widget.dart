import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/core/colors.dart';

class TextChatWidget extends StatelessWidget {
  const TextChatWidget({
    super.key,
    required this.isSender,
    required this.text,
    this.isGroup = false,
    required this.time,
  });
  final bool isSender;
  final String text;
  final bool isGroup;
  final String time;

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
            child: Text(
              text,
              style: TextStyle(fontSize: 16, color: color),
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
