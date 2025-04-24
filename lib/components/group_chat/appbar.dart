import 'package:chat_app/components/group_chat/delete_message.dart';
import 'package:chat_app/features/chat_page/models/message_model.dart';
import 'package:chat_app/features/chat_page/views/message_info_page.dart';
import 'package:chat_app/features/home/models/chat_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/colors.dart';
import '../../core/size.dart';
import '../../features/auth/models/user_models.dart';
import '../../features/calls_screen/view_models/bloc/calling_bloc.dart';
import '../../route/navigation_utils.dart';

PreferredSize groupChatAppBar(BuildContext context,
    {required List<String> selectedMessagesId,
    required ChatModel chatModel,
    required List<MessageModel> models,
    required void Function() clearSelectedMessage,
    required Map<String, UserModels> allMembers,
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
              Expanded(
                child: InkWell(
                  onTap: () => NavigationUtils.groupInfoPage(context),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            NetworkImage(chatModel.groupImage ?? ""),
                      ),
                      width10,
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chatModel.groupName!,
                              style: TextStyle(fontSize: 16),
                              maxLines: 1,
                            ),
                            Text("${chatModel.participants.length} Members"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    context.read<CallingBloc>().add(
                        CallingEvent.startGroupVideoCalling(
                            chatId: chatModel.chatId,
                            groupName: chatModel.groupName ?? "",
                            image: chatModel.groupImage ?? "",
                            participants: chatModel.participants));
                    NavigationUtils.videoCallPage(context);
                  },
                  icon: Icon(CupertinoIcons.video_camera, size: 36)),
              // width10,
              IconButton(
                  onPressed: () {
                    context.read<CallingBloc>().add(
                        CallingEvent.startGroupVoiceCalling(
                            chatId: chatModel.chatId,
                            groupName: chatModel.groupName ?? "",
                            image: chatModel.groupImage ?? "",
                            participants: chatModel.participants));
                    NavigationUtils.voiceCallPage(context);
                  },
                  icon: Icon(CupertinoIcons.phone)),
            ] else ...[
              if (selectedMessagesId.length > 1) ...[
                Text(selectedMessagesId.length.toString()),
                Spacer(),
                IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => Dialog(
                                child: DeleteMessageDialog(
                              messageIds: selectedMessagesId,
                              onlyDeleteForMe: true,
                              clearSelectedMessage: clearSelectedMessage,
                              hideReactions: hideReactions,
                            )));
                  },
                  icon: Icon(Icons.delete_outline_rounded),
                ),
                IconButton(
                  onPressed: () {
                    hideReactions();
                    clearSelectedMessage();
                  },
                  icon: Icon(Icons.star_border_purple500_rounded),
                ),
                IconButton(
                  onPressed: () {
                    hideReactions();
                    clearSelectedMessage();
                  },
                  icon: Icon(Icons.copy_rounded),
                ),
              ] else ...[
                Text(selectedMessagesId.length.toString()),
                Spacer(),
                IconButton(
                  onPressed: () {
                    final selectedModels = models;
                    if (selectedModels
                        .where((element) =>
                            !element.isSender ||
                            element.messageType == "delete")
                        .isNotEmpty) {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                            child: DeleteMessageDialog(
                          messageIds: selectedMessagesId,
                          onlyDeleteForMe: true,
                          clearSelectedMessage: clearSelectedMessage,
                          hideReactions: hideReactions,
                        )),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                            child: DeleteMessageDialog(
                          messageIds: selectedMessagesId,
                          clearSelectedMessage: clearSelectedMessage,
                          hideReactions: hideReactions,
                        )),
                      );
                    }
                  },
                  icon: Icon(Icons.delete_outline_rounded),
                ),
                IconButton(
                  onPressed: () {
                    hideReactions();
                    clearSelectedMessage();
                  },
                  icon: Icon(Icons.copy_rounded),
                ),
                IconButton(
                  onPressed: () {
                    hideReactions();
                    clearSelectedMessage();
                  },
                  icon: Icon(Icons.star_border_purple500_rounded),
                ),
                if (models.isNotEmpty &&
                    models.length <= 1 &&
                    models.first.isSender)
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          hideReactions();
                          return InfoBottomSheet(
                              messageModel: models.first,
                              allMembers: allMembers);
                        },
                      );
                    },
                    icon: Icon(Icons.info_outline),
                  ),
              ],
            ],
            width10,
          ],
        ),
      ));
}
