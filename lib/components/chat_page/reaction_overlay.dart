import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_app/core/colors.dart';
import 'package:chat_app/features/chat_page/view_models/bloc/chat_bloc.dart';

import '../../core/size.dart';

OverlayEntry createReactions(
    BuildContext context,
    Offset position,
    String messageId,
    void Function() hideReactions,
    void Function() showEmojiKeyboard,
    {bool isGroup = false}) {
  hideReactions(); // Remove any existing popup

  return OverlayEntry(
    builder: (context) => Positioned(
      left: position.dx - 60, // Adjust based on your UI
      top: position.dy - 50, // Show above the tapped chat
      child: Material(
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.backgroundColor(context),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              BuildReaction(
                isGroup: isGroup,
                emoji: "👍",
                hideReactions: hideReactions,
                messageId: messageId,
              ),
              BuildReaction(
                isGroup: isGroup,
                emoji: "❤️",
                hideReactions: hideReactions,
                messageId: messageId,
              ),
              BuildReaction(
                isGroup: isGroup,
                emoji: "😂",
                hideReactions: hideReactions,
                messageId: messageId,
              ),
              BuildReaction(
                isGroup: isGroup,
                emoji: "😮",
                hideReactions: hideReactions,
                messageId: messageId,
              ),
              BuildReaction(
                isGroup: isGroup,
                emoji: "😢",
                hideReactions: hideReactions,
                messageId: messageId,
              ),
              BuildReaction(
                isGroup: isGroup,
                emoji: "🙏",
                hideReactions: hideReactions,
                messageId: messageId,
              ),
              InkWell(
                onTap: () {
                  hideReactions();
                  showEmojiKeyboard();
                },
                child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white12,
                    ),
                    child: Icon(Icons.add)),
              ),
              width5,
            ],
          ),
        ),
      ),
    ),
  );
}

class BuildReaction extends StatelessWidget {
  const BuildReaction({
    super.key,
    required this.emoji,
    required this.hideReactions,
    required this.messageId,
    required this.isGroup,
  });
  final String emoji;
  final void Function() hideReactions;
  final String messageId;
  final bool isGroup;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        hideReactions();
        if (isGroup) {
          return context
              .read<GroupBloc>()
              .add(GroupEvent.addReaction(messageId, emoji));
        }
        context.read<ChatBloc>().add(ChatEvent.addReaction(messageId, emoji));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(emoji, style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
