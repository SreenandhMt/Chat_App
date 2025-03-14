import 'package:chat_app/components/chat_page/chat_widget.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoBottomSheet extends StatelessWidget {
  const InfoBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: AppColors.chatBackgroundColor(context),
          width: double.infinity,
          // child: ChatWidget(isSender: true),
        ),
        height10,
        Row(
          children: [
            width10,
            Icon(
              Icons.done_all_outlined,
              color: AppColors.primary(context),
            ),
            width5,
            Text(
              "Read",
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        height5,
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("_"),
        ),
        height10,
        Row(
          children: [
            width10,
            Icon(Icons.done_all_outlined),
            width5,
            Text(
              "Delivered",
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        height5,
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("3 Minutes Ago"),
        ),
      ],
    );
  }
}
