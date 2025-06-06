import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/core/colors.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/home/models/chat_model.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({
    super.key,
    required this.index,
    required this.userModel,
    required this.chatModel,
    this.onTap,
  });
  final int index;
  final UserModels? userModel;
  final ChatModel chatModel;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(
          chatModel.isGroup ? chatModel.groupName ?? "" : userModel?.name ?? "",
          maxLines: 1,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        leading: CircleAvatar(
          radius: 28,
          backgroundImage: NetworkImage(chatModel.isGroup
              ? chatModel.groupImage ?? ""
              : userModel?.imageUrl ?? ""),
          child: Stack(
            children: [
              if (!chatModel.isGroup &&
                  userModel != null &&
                  userModel!.status == "Online")
                Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                      radius: 8, backgroundColor: AppColors.primary(context)),
                )
            ],
          ),
        ),
        subtitle: Text(
          chatModel.lastMessage,
          maxLines: 1,
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(chatModel.date),
            if (chatModel.unreadCount != null && chatModel.unreadCount != 0)
              CircleAvatar(
                  radius: 10,
                  backgroundColor: AppColors.secondary(context),
                  child: Text(
                    chatModel.unreadCount.toString(),
                    style: TextStyle(fontSize: 14),
                  ))
            else
              SizedBox(),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
