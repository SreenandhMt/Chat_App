import 'package:chat_app/core/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/core/colors.dart';

class DeletedMessageLog extends StatelessWidget {
  const DeletedMessageLog({
    super.key,
    required this.isSender,
    required this.text,
    this.isGroup = false,
  });
  final bool isSender;
  final String text;
  final bool isGroup;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.chatColor(context, isSender),
        borderRadius: BorderRadius.circular(10),
      ),
      constraints: BoxConstraints(
        minHeight: 30,
        maxWidth: size.width * 0.79,
        minWidth: size.width * 0.3,
      ),
      margin:
          isGroup ? null : EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Row(
              children: [
                Icon(Icons.block),
                width5,
                Text(
                  text,
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                ),
                width5,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
