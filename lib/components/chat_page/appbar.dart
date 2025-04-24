import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/chat_page/models/message_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/colors.dart';
import '../../features/calls_screen/view_models/bloc/calling_bloc.dart';
import '../../features/chat_page/views/message_info_page.dart';
import '../../route/navigation_utils.dart';
import '../group_chat/delete_message.dart';

PreferredSize appBar(
  BuildContext context, {
  required void Function() hideReactions,
  required List<String> selectedMessages,
  required UserModels userModel,
  required List<MessageModel> models,
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
                  onPressed: () async {
                    context.read<CallingBloc>().add(
                        CallingEvent.startVideoCalling(receiver: userModel));
                    NavigationUtils.videoCallPage(context);
                  },
                  icon: Icon(CupertinoIcons.video_camera, size: 36)),
              // width10,
              IconButton(
                  onPressed: () async {
                    context.read<CallingBloc>().add(
                        CallingEvent.startVoiceCalling(receiver: userModel));
                    NavigationUtils.voiceCallPage(context);
                  },
                  icon: Icon(CupertinoIcons.phone)),
            ] else ...[
              if (selectedMessages.length > 1) ...[
                IconButton(
                  onPressed: clearMessage,
                  icon: Icon(Icons.arrow_back),
                ),
                Text(selectedMessages.length.toString()),
                Spacer(),
                IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => Dialog(
                                child: DeleteMessageDialog(
                              messageIds: selectedMessages,
                              onlyDeleteForMe: true,
                              clearSelectedMessage: clearMessage,
                              hideReactions: hideReactions,
                              isGroup: false,
                            )));
                  },
                  icon: Icon(Icons.delete_outline_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.star_border_purple500_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.copy_rounded),
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
                          messageIds: selectedMessages,
                          onlyDeleteForMe: true,
                          clearSelectedMessage: clearMessage,
                          hideReactions: hideReactions,
                          isGroup: false,
                        )),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                            child: DeleteMessageDialog(
                          messageIds: selectedMessages,
                          clearSelectedMessage: clearMessage,
                          hideReactions: hideReactions,
                          isGroup: false,
                        )),
                      );
                    }
                  },
                  icon: Icon(Icons.delete_outline_rounded),
                ),
                IconButton(
                  onPressed: () {
                    hideReactions();
                    clearMessage();
                  },
                  icon: Icon(Icons.copy_rounded),
                ),
                IconButton(
                  onPressed: () {
                    hideReactions();
                    clearMessage();
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
                            allMembers: {userModel.uid: userModel},
                          );
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
