import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/core/colors.dart';

class StatusTypingWidget extends StatelessWidget {
  const StatusTypingWidget({
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
    //TODO check is sender and if the true return sizedBox
    return Container(
      decoration: BoxDecoration(
        color: AppColors.chatColor(context, isSender),
        borderRadius: BorderRadius.circular(10),
      ),
      constraints: BoxConstraints(
        maxWidth: size.width * 0.79,
        minWidth: 10,
      ),
      margin: isGroup ? null : EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Text(
              text,
              style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}
