import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:chat_app/components/chat_input.dart';
import 'package:chat_app/core/wallpaper_colors.dart';
import 'package:chat_app/features/chat_page/models/message_model.dart';
import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';

import '../../../components/chat_page/emoji_widget.dart';
import '../../../components/chat_page/reaction_overlay.dart';
import '../../../components/group_chat/appbar.dart';
import '../../../components/group_chat/chat_widget.dart';
import '../../../core/colors.dart';
import '../../../core/error_snackbar.dart';
import '../../../core/loading.dart';

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
  List<MessageModel> selectedMessagesModel = [];
  String? sticker;
  OverlayEntry? overlayEntry;
  bool listening = false;

  @override
  void initState() {
    keyboardVisibility();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        controller.addListener(() {
          if (controller.text.isNotEmpty) {
            context
                .read<GroupBloc>()
                .add(GroupEvent.editStatusToTyping(isTyping: true));
          } else {
            context
                .read<GroupBloc>()
                .add(GroupEvent.editStatusToTyping(isTyping: false));
          }
        });
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
    return BlocConsumer<GroupBloc, GroupState>(listener: (context, state) {
      if (state is GroupData) {
        if (state.isError != null) {
          showExpandableSnackBar(
              context,
              state.isError!.message,
              "Error Group Chat: ${state.isError!.details}",
              state.isError!.code);
          context.read<GroupBloc>().add(GroupEvent.clearError());
        }
        if (state.messageData != null && !listening) {
          listening = true;
          state.messageData!.listen(
            (event) {
              context
                  .read<GroupBloc>()
                  .add(GroupEvent.loadMessageModel(docs: event.docs));
            },
          );
        }
      }
    }, builder: (context, state) {
      return state.when(
          groupData: (groupData,
              groupMembers,
              allGroupMembers,
              blockedGroupMembers,
              messageData,
              wallpaperIndex,
              messages,
              isLoading,
              inputLoading,
              isError) {
            if (groupData == null) {
              return AppLoadingWidget();
            }
            return Scaffold(
              backgroundColor: wallpaperColor(context)[wallpaperIndex],
              appBar: groupChatAppBar(context,
                  chatModel: groupData,
                  allMembers: allGroupMembers,
                  models: selectedMessagesModel, clearSelectedMessage: () {
                setState(() {
                  selectedMessagesId.clear();
                  selectedMessagesModel.clear();
                });
              },
                  selectedMessagesId: selectedMessagesId,
                  hideReactions: hideReactions),
              body: PopScope(
                canPop: isEmojiKeyboardHide,
                onPopInvoked: (didPop) {
                  setState(() {
                    isEmojiKeyboardHide = true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView(
                                reverse: true,
                                dragStartBehavior: DragStartBehavior.down,
                                controller: scrollController,
                                children: messages.entries.map((entry) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              entry.key,
                                              style: GoogleFonts.nunito(),
                                            ),
                                          )
                                        ],
                                      ),
                                      ...entry.value.map((chat) {
                                        final message = chat;
                                        return GestureDetector(
                                          onTap: () => clickedMessage(message),
                                          onLongPressStart: (details) =>
                                              onLongPressStart(
                                                  message, details),
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
                                                sender: allGroupMembers[
                                                    message.senderId],
                                                messageModel: message),
                                          ),
                                        );
                                      }),
                                    ],
                                  );
                                }).toList(),
                              ),
                            ),
                            if (groupData.memberCanMessage != null &&
                                    groupData.memberCanMessage! ||
                                groupData.admins.contains(
                                    FirebaseAuth.instance.currentUser!.uid))
                              ChatInput(
                                inputLoading: inputLoading,
                                emojiHide: isEmojiKeyboardHide,
                                hideEmoji: () {
                                  isEmojiKeyboardHide = true;
                                  if (mounted) {
                                    setState(() {});
                                  }
                                },
                                isGroup: true,
                                stickerSelected: (content) async {
                                  if (content.mimeType != "image/gif") {
                                    final stickerImage =
                                        await _convertUriToFile(content.data!);
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
                                        GroupEvent.sendMessage(controller.text),
                                      );
                                  controller.clear();
                                },
                                controller: controller,
                                showEmojiKeyboard: showEmojiKeyboard,
                              )
                            else
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.themeColor(context)),
                                alignment: Alignment.center,
                                child: Text("Only admin can send messages"),
                              ),
                            CustomEmojiKeyboard(
                              emojiController: controller,
                              isHide: isEmojiKeyboardHide,
                            ),
                          ],
                        ),
                      ),
                      //Loading
                      if (isLoading) AppLoadingWidget()
                    ],
                  ),
                ),
              ),
            );
          },
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

  void clickedMessage(MessageModel message) {
    if (message.messageType == "log") return;
    final id = message.id;
    if (selectedMessagesId.isEmpty) return;
    if (!selectedMessagesId.contains(id)) {
      selectedMessagesId.add(id);
      selectedMessagesModel.add(message);
      setState(() {});
      return;
    }
    setState(() {
      hideReactions();
      final index = selectedMessagesId.indexOf(id);
      selectedMessagesId.remove(id);
      selectedMessagesModel.removeAt(index);
    });
  }

  void onLongPressStart(MessageModel message, details) {
    if (message.messageType == "log") return;
    setState(() {
      if (!message.isSender) {
        showReactions(
          context,
          Offset(70, details.globalPosition.dy - 30),
          message.id,
        );
      }
      if (selectedMessagesId.contains(message.id)) {
        final index = selectedMessagesId.indexOf(message.id);
        selectedMessagesId.remove(message.id);
        selectedMessagesModel.removeAt(index);
      } else {
        selectedMessagesId.add(message.id);
        selectedMessagesModel.add(message);
      }
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
  void didChangeDependencies() {
    super.didChangeDependencies();
    ModalRoute.of(context)?.addScopedWillPopCallback(() async {
      if (isEmojiKeyboardHide) {
        context.read<GroupBloc>().add(GroupEvent.clearState());
      }
      return true;
    });
  }

  @override
  void dispose() {
    hideReactions();
    super.dispose();
  }
}
