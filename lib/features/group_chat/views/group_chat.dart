import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:chat_app/components/chat_input.dart';
import 'package:chat_app/features/chat_page/models/message_model.dart';
import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:path_provider/path_provider.dart';

import '../../../components/chat_page/emoji_widget.dart';
import '../../../components/chat_page/reaction_overlay.dart';
import '../../../components/group_chat/appbar.dart';
import '../../../components/group_chat/chat_widget.dart';
import '../../../core/colors.dart';

class GroupChatPage extends StatefulWidget {
  const GroupChatPage({super.key});

  @override
  State<GroupChatPage> createState() => _GroupChatPageState();
}

class _GroupChatPageState extends State<GroupChatPage> {
  bool isEmojiKeyboardHide = true;
  final visibility = KeyboardVisibilityController();
  TextEditingController controller = TextEditingController();
  final scrollController = ScrollController();
  late StreamSubscription<bool> stream;
  bool isRecoding = false;
  List<String> selectedMessagesId = [];
  String? sticker;
  OverlayEntry? overlayEntry;

  @override
  void initState() {
    keyboardVisibility();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        scrollController.addListener(() {
          if (overlayEntry != null) {
            overlayEntry!.remove();
            overlayEntry = null;
          }
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GroupBloc, GroupState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.when(
              groupData: (groupData, groupMembers, messageData) => Scaffold(
                    backgroundColor: AppColors.chatBackgroundColor(context),
                    appBar: groupChatAppBar(context, chatModel: groupData!,
                        clearSelectedMessage: () {
                      setState(() {
                        selectedMessagesId.clear();
                      });
                    },
                        selectedMessagesId: selectedMessagesId,
                        hideReactions: hideReactions),
                    body: StreamBuilder(
                        stream: messageData,
                        builder: (context, snapshot) {
                          if (!snapshot.hasData) {
                            return SizedBox();
                          }
                          return Container(
                            decoration: BoxDecoration(),
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListView(
                                    reverse: true,
                                    dragStartBehavior: DragStartBehavior.down,
                                    controller: scrollController,
                                    children: List.generate(
                                      snapshot.data!.docs.length,
                                      (index) {
                                        final message = MessageModel.fromJson(
                                            snapshot.data!.docs[index].data());
                                        return GestureDetector(
                                          onTap: () => setState(() {
                                            hideReactions();
                                            selectedMessagesId
                                                .remove(message.id);
                                          }),
                                          onLongPressStart: (details) =>
                                              setState(() {
                                            if (!message.isSender) {
                                              showReactions(
                                                context,
                                                Offset(
                                                    70,
                                                    details.globalPosition.dy -
                                                        30),
                                                message.id,
                                              );
                                            }
                                            if (selectedMessagesId
                                                .contains(message.id)) {
                                              selectedMessagesId
                                                  .remove(message.id);
                                            } else {
                                              selectedMessagesId
                                                  .add(message.id);
                                            }
                                          }),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: selectedMessagesId
                                                      .contains(message.id)
                                                  ? AppColors.primary(context)
                                                      .withOpacity(0.1)
                                                  : null,
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                            ),
                                            child: GroupChatWidget(
                                                sender: groupMembers[
                                                    message.senderId],
                                                messageModel: message),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                ChatInput(
                                  isGroup: true,
                                  stickerSelected: (content) async {
                                    //getting url here
                                    debugPrint(
                                        "Inserted content: ${content.uri}");
                                    if (content.mimeType != "image/gif") {
                                      final stickerImage =
                                          await _convertUriToFile(
                                              content.data!);
                                      context.read<GroupBloc>().add(
                                          GroupEvent.sendSticker(
                                              stickerPath: stickerImage!));
                                    }
                                  },
                                  onSubmit: () {
                                    if (controller.text.isEmpty) return;
                                    if (isValidUrl(controller.text)) {
                                      context.read<GroupBloc>().add(
                                          GroupEvent.sendLink(controller.text));
                                      controller.clear();
                                      return;
                                    }
                                    context.read<GroupBloc>().add(
                                          GroupEvent.sendMessage(
                                              controller.text),
                                        );
                                    controller.clear();
                                  },
                                  controller: controller,
                                  showEmojiKeyboard: showEmojiKeyboard,
                                ),
                                CustomEmojiKeyboard(
                                  emojiController: controller,
                                  isHide: isEmojiKeyboardHide,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
              createGroupData: (groupName,
                      groupDescription,
                      groupImagePath,
                      memberCanEdit,
                      memberCanAddMember,
                      memberCanMessage,
                      contacts,
                      selectedContacts) =>
                  CircularProgressIndicator());
        });
  }

  bool isValidUrl(String text) {
    final urlRegex = RegExp(
      r'^(https?:\/\/)?'
      r'(([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,})' // Domain
      r'(:\d{2,5})?' // Optional Port
      r'(\/[^\s]*)?$', // Optional Path
      caseSensitive: false,
    );
    return urlRegex.hasMatch(text);
  }

  void showEmojiKeyboard() {
    if (mounted) {
      setState(() {
        isEmojiKeyboardHide = false;
      });
    }
  }

  void keyboardVisibility() {
    stream = visibility.onChange.listen((bool visible) {
      if (visible == true && mounted) {
        isEmojiKeyboardHide = true;
        setState(() {});
      }
    });
  }

  void showReactions(BuildContext context, Offset position, String messageId) {
    overlayEntry = createReactions(
        context, position, messageId, hideReactions, showEmojiKeyboard,
        isGroup: true);
    Overlay.of(context).insert(overlayEntry!);
  }

  void hideReactions() {
    overlayEntry?.remove();
    overlayEntry = null;
  }

  Future<String?> _convertUriToFile(Uint8List bytes) async {
    try {
      final Directory tempDir =
          await getTemporaryDirectory(); // Get temp storage
      final File file =
          File('${tempDir.path}/${DateTime.now().microsecondsSinceEpoch}.png');

      await file.writeAsBytes(bytes, flush: true); // Save to local storage
      return file.path;
    } catch (e) {
      debugPrint("Error converting URI to file: $e");
      return null;
    }
  }

  @override
  void dispose() {
    hideReactions();
    super.dispose();
  }
}
