import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/chat_page/view_models/bloc/chat_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/colors.dart';
import '../../features/chat_page/views/chat_info_page.dart';
import '../../route/navigation_utils.dart';

PreferredSize appBar(
  BuildContext context, {
  required void Function() hideReactions,
  required List<String> selectedMessages,
  required UserModels userModel,
  required void Function() clearMessage,
}) {
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
            if (selectedMessages.isEmpty) ...[
              IconButton(
                onPressed: () => context.pop(),
                icon: Icon(Icons.arrow_back),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => NavigationUtils.userProfilePage(context),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(userModel.imageUrl ?? ""),
                      ),
                      width10,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userModel.name,
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(userModel.status),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                  onPressed: () => NavigationUtils.videoCallPage(context),
                  icon: Icon(CupertinoIcons.video_camera, size: 36)),
              // width10,
              IconButton(
                  onPressed: () => NavigationUtils.voiceCallPage(context),
                  icon: Icon(CupertinoIcons.phone)),
              // width10,
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.info)),
            ] else ...[
              if (selectedMessages.length > 1) ...[
                IconButton(
                  onPressed: clearMessage,
                  icon: Icon(Icons.arrow_back),
                ),
                Text(selectedMessages.length.toString()),
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
                IconButton(
                  onPressed: clearMessage,
                  icon: Icon(Icons.arrow_back),
                ),
                Text(selectedMessages.length.toString()),
                Spacer(),
                IconButton(
                  onPressed: () {
                    context.read<ChatBloc>().add(ChatEvent.deleteMessage(
                        messageId: selectedMessages.first));
                    clearMessage();
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
