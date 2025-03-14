import 'package:chat_app/features/chat_page/views/chat_info_page.dart';
import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';
import 'package:chat_app/features/home/models/chat_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/colors.dart';
import '../../core/size.dart';
import '../../route/navigation_utils.dart';

PreferredSize groupChatAppBar(BuildContext context,
    {required List<String> selectedMessagesId,
    required ChatModel chatModel,
    required void Function() clearSelectedMessage,
    required void Function() hideReactions}) {
  return PreferredSize(
      preferredSize: Size(MediaQuery.sizeOf(context).width, 65),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundColor(context),
        ),
        padding: MediaQuery.paddingOf(context),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => context.pop(),
              icon: Icon(Icons.arrow_back),
            ),
            if (selectedMessagesId.isEmpty) ...[
              InkWell(
                onTap: () => NavigationUtils.groupInfoPage(context),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(chatModel.groupImage ?? ""),
                    ),
                    width10,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chatModel.groupName!,
                          style: TextStyle(fontSize: 16),
                        ),
                        Text("${chatModel.participants.length} Members"),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.video_camera, size: 36)),
              // width10,
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.phone)),
              // width10,
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.info)),
            ] else ...[
              if (selectedMessagesId.length > 1) ...[
                Text(selectedMessagesId.length.toString()),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.star_border_purple500_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete_outline_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.copy_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.forward_to_inbox_outlined),
                ),
              ] else ...[
                Text(selectedMessagesId.length.toString()),
                Spacer(),
                IconButton(
                  onPressed: () {
                    hideReactions();
                    _deleteMessage(context, selectedMessagesId.first);
                    clearSelectedMessage();
                  },
                  icon: Icon(Icons.delete_outline_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.reply),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.star_border_purple500_rounded),
                ),
                PopupMenuButton(
                  position: PopupMenuPosition.under,
                  splashRadius: 20,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Row(
                        children: [width10, Text("Info"), width50, width20],
                      ),
                      onTap: () => showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          hideReactions();
                          return InfoBottomSheet();
                        },
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: [width10, Text("Copy"), width50, width20],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: [width10, Text("Edit"), width50, width20],
                      ),
                    )
                  ],
                  child: Icon(Icons.more_vert),
                )
              ],
            ],
            width10,
          ],
        ),
      ));
}

void _deleteMessage(BuildContext context, String messageId) {
  context.read<GroupBloc>().add(GroupEvent.deleteMessage(messageId: messageId));
}
