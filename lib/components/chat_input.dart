import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

import 'package:chat_app/components/audio_record_input.dart';
import 'package:chat_app/components/chat_page/poll_creating_widget.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/chat_page/view_models/bloc/chat_bloc.dart';
import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';
import 'package:chat_app/localization/locals.dart';

import '../core/colors.dart';

class ChatInput extends StatefulWidget {
  const ChatInput({
    super.key,
    this.inputLoading = false,
    required this.stickerSelected,
    required this.controller,
    required this.showEmojiKeyboard,
    required this.emojiHide,
    required this.hideEmoji,
    this.onSubmit,
    this.isGroup = false,
  });
  final bool inputLoading;
  final void Function(KeyboardInsertedContent) stickerSelected;
  final TextEditingController controller;
  final void Function() showEmojiKeyboard;
  final bool emojiHide;
  final void Function() hideEmoji;
  final void Function()? onSubmit;
  final bool isGroup;

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  bool isRecording = false;

  void closeRecording() {
    isRecording = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundColor(context),
        borderRadius: BorderRadius.circular(2),
      ),
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 2),
      padding: EdgeInsets.all(10),
      child: isRecording
          ? AudioRecordingWidget(
              closeRecording: closeRecording, isGroup: widget.isGroup)
          : Column(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 40,
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
                        suffixIcon: widget.inputLoading
                            ? CircularProgressIndicator(
                                strokeAlign: -5,
                                color: AppColors.primary(context),
                              )
                            : null,
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
                    width5,
                    PopupMenuButton(
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                child: buildPopUpButtonWidget(
                                    "Documents", Icons.attach_file_rounded),
                                onTap: () async {
                                  final file = await FilePicker.platform
                                      .pickFiles(
                                          allowMultiple: false,
                                          type: FileType.any);
                                  if (file != null) {
                                    if (widget.isGroup) {
                                      context.read<GroupBloc>().add(
                                          GroupEvent.sendDocument(
                                              file.paths.first!));
                                      return;
                                    }
                                    context.read<ChatBloc>().add(
                                        ChatEvent.sendDocument(
                                            file.paths.first!));
                                  }
                                },
                              ),
                              PopupMenuItem(
                                child: buildPopUpButtonWidget(
                                    "Image", Icons.image_outlined),
                                onTap: () async {
                                  final file = await FilePicker.platform
                                      .pickFiles(
                                          allowMultiple: false,
                                          type: FileType.image);
                                  if (file != null) {
                                    if (widget.isGroup) {
                                      context.read<GroupBloc>().add(
                                          GroupEvent.sendImage(
                                              file.paths.first!));
                                      return;
                                    }
                                    context.read<ChatBloc>().add(
                                        ChatEvent.sendImage(file.paths.first!));
                                  }
                                },
                              ),
                              PopupMenuItem(
                                child: buildPopUpButtonWidget(
                                    "Video", Icons.video_file_outlined),
                                onTap: () async {
                                  final file =
                                      await FilePicker.platform.pickFiles(
                                    allowMultiple: false,
                                    type: FileType.video,
                                  );
                                  if (file != null) {
                                    if (widget.isGroup) {
                                      context.read<GroupBloc>().add(
                                          GroupEvent.sendVideoFile(
                                              file.files.first.path!));
                                      return;
                                    }
                                    context.read<ChatBloc>().add(
                                        ChatEvent.sendVideoFile(
                                            file.files.first.path!));
                                  }
                                },
                              ),
                              if (widget.isGroup)
                                PopupMenuItem(
                                  child: buildPopUpButtonWidget(
                                      "Poll", Icons.edit_note_rounded),
                                  onTap: () async {
                                    showDialog(
                                      context: context,
                                      builder: (context) => PollCreatingWidget(
                                          isGroup: widget.isGroup),
                                    );
                                  },
                                ),
                            ],
                        child: Icon(CupertinoIcons.add_circled)),
                    IconButton(
                        onPressed: () {
                          isRecording = !isRecording;
                          setState(() {});
                        },
                        icon: Icon(CupertinoIcons.mic)),
                    InkWell(
                      onTap: () {
                        if (widget.emojiHide) {
                          widget.showEmojiKeyboard();
                        } else {
                          widget.hideEmoji();
                        }
                      },
                      child: Icon(widget.emojiHide
                          ? CupertinoIcons.smiley
                          : CupertinoIcons.smiley_fill),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: widget.onSubmit,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.send_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
    );
  }

  Widget buildPopUpButtonWidget(String text, IconData icon) {
    return Row(
      children: [
        width5,
        Icon(icon),
        width10,
        Text(text),
        width10,
      ],
    );
  }
}
