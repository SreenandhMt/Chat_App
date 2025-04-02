import 'package:chat_app/features/chat_page/view_models/bloc/chat_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:chat_app/core/fonts.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';

class DeleteMessageDialog extends StatelessWidget {
  const DeleteMessageDialog({
    super.key,
    required this.messageIds,
    this.onlyDeleteForMe = false,
    required this.clearSelectedMessage,
    required this.hideReactions,
    this.isGroup = true,
  });
  final bool isGroup;
  final List<String> messageIds;
  final bool onlyDeleteForMe;
  final void Function() clearSelectedMessage;
  final void Function() hideReactions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          height10,
          Icon(Icons.delete, size: 50, color: Colors.red),
          height10,
          Text(
            "Delete Message?",
            style: AppFonts.titleFont(context),
          ),
          height15,
          if (!onlyDeleteForMe)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      if (!isGroup) {
                        context.read<ChatBloc>().add(
                            ChatEvent.deleteMessage(messageIds: messageIds));
                        context.pop();
                        Future.microtask(() {
                          hideReactions();
                          clearSelectedMessage();
                        });
                        return;
                      }
                      context
                          .read<GroupBloc>()
                          .add(GroupEvent.deleteMessage(messageId: messageIds));
                      context.pop();
                      Future.microtask(() {
                        hideReactions();
                        clearSelectedMessage();
                      });
                    },
                    height: 45,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Text("Delete for everyone"),
                  ),
                ),
              ],
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    if (!isGroup) {
                      context.read<ChatBloc>().add(
                          ChatEvent.deleteMessageForMe(messageIds: messageIds));
                      context.pop();
                      Future.microtask(() {
                        hideReactions();
                        clearSelectedMessage();
                      });
                      return;
                    }
                    context.read<GroupBloc>().add(
                        GroupEvent.deleteChatForMe(messageIds: messageIds));
                    context.pop();
                    Future.microtask(() {
                      hideReactions();
                      clearSelectedMessage();
                    });
                  },
                  height: 45,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Text("Delete for me"),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    context.pop();
                  },
                  height: 45,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Text("Cancel"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
