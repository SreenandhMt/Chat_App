import 'package:chat_app/components/audio_record_input.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../core/colors.dart';

class ChatInput extends StatefulWidget {
  const ChatInput({
    super.key,
    required this.stickerSelected,
    required this.controller,
    required this.showEmojiKeyboard,
  });
  final void Function(KeyboardInsertedContent) stickerSelected;
  final TextEditingController controller;
  final void Function() showEmojiKeyboard;

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  bool isRecoding = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundColor(context),
        borderRadius: BorderRadius.circular(2),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: isRecoding
          ? AudioRecordingWidget()
          : Column(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 50,
                    maxHeight: 150,
                  ),
                  child: TextFormField(
                    maxLines: null,
                    controller: widget.controller,
                    keyboardType: TextInputType.multiline,
                    contentInsertionConfiguration:
                        ContentInsertionConfiguration(
                      onContentInserted: widget.stickerSelected,
                      allowedMimeTypes: [
                        'image/png',
                        'image/jpeg',
                        'image/gif',
                      ],
                    ),
                    decoration: InputDecoration(
                        hintText: LocaleData.chatHitText.getString(context),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            borderSide: BorderSide.none)),
                  ),
                ),
                Divider(thickness: 0.1),
                Row(
                  spacing: 15,
                  children: [
                    Icon(CupertinoIcons.add_circled),
                    IconButton(
                        onPressed: () {
                          isRecoding = !isRecoding;
                          setState(() {});
                        },
                        icon: Icon(CupertinoIcons.mic)),
                    InkWell(
                        onTap: () {
                          widget.showEmojiKeyboard();
                        },
                        child: Icon(CupertinoIcons.smiley)),
                    Icon(Icons.sticky_note_2_outlined),
                    Icon(CupertinoIcons.sparkles),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.send_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
    );
  }
}
