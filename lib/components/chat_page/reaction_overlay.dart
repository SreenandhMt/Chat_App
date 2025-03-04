import 'package:chat_app/core/colors.dart';
import 'package:flutter/material.dart';

import '../../core/size.dart';

OverlayEntry createReactions(BuildContext context, Offset position,
    void Function() hideReactions, void Function() showEmojiKeyboard) {
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
                emoji: "👍",
                hideReactions: hideReactions,
              ),
              BuildReaction(emoji: "❤️", hideReactions: hideReactions),
              BuildReaction(emoji: "😂", hideReactions: hideReactions),
              BuildReaction(emoji: "😮", hideReactions: hideReactions),
              BuildReaction(emoji: "😢", hideReactions: hideReactions),
              BuildReaction(emoji: "🙏", hideReactions: hideReactions),
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
  });
  final String emoji;
  final void Function() hideReactions;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        hideReactions();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(emoji, style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
