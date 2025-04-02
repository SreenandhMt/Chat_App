import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/components/chat_page/chat_widget.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/chat_page/models/message_model.dart';

import '../../auth/models/user_models.dart';

class InfoBottomSheet extends StatelessWidget {
  const InfoBottomSheet({
    super.key,
    required this.messageModel,
    this.allMembers,
  });
  final MessageModel messageModel;
  final Map<String, UserModels>? allMembers;

  @override
  Widget build(BuildContext context) {
    List<UserModels> seenMembers = [], deliveredMembers = [];
    for (var key in allMembers!.keys.toList()) {
      final user = allMembers![key]!;
      if (user.uid == messageModel.senderId) continue;
      if (messageModel.isSeenBy.contains(user.uid)) {
        seenMembers.add(user);
      } else {
        deliveredMembers.add(user);
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: AppColors.chatBackgroundColor(context),
          width: double.infinity,
          child: ChatWidget(messageModel: messageModel),
        ),
        height10,
        ...List.generate(
          seenMembers.length,
          (index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(seenMembers[index].imageUrl ?? ""),
              ),
              title: Text(
                seenMembers[index].name,
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Row(
                children: [
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
            );
          },
        ),
        height10,
        ...List.generate(
          deliveredMembers.length,
          (index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(deliveredMembers[index].imageUrl ?? ""),
              ),
              title: Text(
                deliveredMembers[index].name,
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all_outlined),
                  width5,
                  Text(
                    "Delivered",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            );
          },
        ),
        height5,
      ],
    );
  }
}
