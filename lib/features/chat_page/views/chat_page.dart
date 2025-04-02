import 'dart:async';
import 'dart:io';

import 'package:chat_app/components/chat_page/reaction_overlay.dart';
import 'package:chat_app/core/wallpaper_colors.dart';
import 'package:chat_app/features/chat_page/models/message_model.dart';
import 'package:chat_app/features/chat_page/view_models/bloc/chat_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:path_provider/path_provider.dart';

import 'package:chat_app/components/chat_page/chat_widget.dart';

import '../../../components/chat_page/appbar.dart';
import '../../../components/chat_input.dart';
import '../../../components/chat_page/emoji_widget.dart';
import '../../../core/colors.dart';

class ChattingPage extends StatefulWidget {
  const ChattingPage({super.key});

  @override
  State<ChattingPage> createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  bool isEmojiKeyboardHide = true;
  final visibility = KeyboardVisibilityController();
  TextEditingController controller = TextEditingController();
  final scrollController = ScrollController();
  late StreamSubscription<bool> stream;
  bool isRecoding = false;
  List<String> selectedMessages = [];
  List<MessageModel> selectedMessagesModels = [];
  String? sticker;
  OverlayEntry? overlayEntry;
  int currentMessage = 0;
  String oldDate = "";

  @override
  void initState() {
    keyboardVisibility();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        controller.addListener(() {
          if (controller.text.isNotEmpty) {
            context
                .read<ChatBloc>()
                .add(ChatEvent.editStatusToTyping(isTyping: true));
          } else {
            context
                .read<ChatBloc>()
                .add(ChatEvent.editStatusToTyping(isTyping: false));
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
    return BlocConsumer<ChatBloc, ChatState>(listener: (context, state) {
      if (state.messageData != null) {
        state.messageData!.listen(
          (event) {
            context.read<ChatBloc>().add(ChatEvent.loadMessages(event.docs));
          },
        );
      }
    }, builder: (context, state) {
      if (state.chatData == null) {
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
      final user = state.chatData!.userModel!;
      return Scaffold(
        backgroundColor: wallpaperColor(context)[state.wallpaperIndex],
        appBar: appBar(
          context,
          hideReactions: hideReactions,
          selectedMessages: selectedMessages,
          models: selectedMessagesModels,
          userModel: user,
          clearMessage: () {
            hideReactions();
            selectedMessages.clear();
            selectedMessagesModels.clear();
            setState(() {});
          },
        ),
        body: PopScope(
          canPop: isEmojiKeyboardHide,
          onPopInvoked: (didPop) {
            setState(() {
              isEmojiKeyboardHide = true;
            });
          },
          child: Container(
            decoration: BoxDecoration(),
            child: Column(
              children: [
                Expanded(
                  child: state.messageData == null
                      ? SizedBox()
                      : ListView(
                          reverse: true,
                          dragStartBehavior: DragStartBehavior.down,
                          controller: scrollController,
                          children: List.generate(
                            state.messages.length,
                            (index) {
                              final message = state.messages[index];

                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () => clickedMessage(message),
                                    onLongPressStart: (details) =>
                                        onLongPressStart(message, details),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: selectedMessages
                                                .contains(message.id)
                                            ? AppColors.primary(context)
                                                // ignore: deprecated_member_use
                                                .withOpacity(0.1)
                                            : null,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: ChatWidget(messageModel: message),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                ),
                ChatInput(
                    inputLoading: state.inputLoading,
                    onSubmit: () {
                      if (isValidUrl(controller.text)) {
                        context
                            .read<ChatBloc>()
                            .add(ChatEvent.sendLink(controller.text));
                        controller.clear();
                        return;
                      }
                      context
                          .read<ChatBloc>()
                          .add(ChatEvent.sendMessage(controller.text));
                      controller.clear();
                      return;
                    },
                    showEmojiKeyboard: showEmojiKeyboard,
                    controller: controller,
                    stickerSelected: (content) async {
                      if (content.mimeType != "image/gif") {
                        final stickerImage =
                            await _convertUriToFile(content.data!);
                        context.read<ChatBloc>().add(
                            ChatEvent.sendSticker(stickerPath: stickerImage!));
                      }
                    }),
                CustomEmojiKeyboard(
                  emojiController: controller,
                  isHide: isEmojiKeyboardHide,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  void clickedMessage(MessageModel message) {
    if (message.messageType == "log") return;
    final id = message.id;
    if (selectedMessages.isEmpty) return;
    if (!selectedMessages.contains(id)) {
      selectedMessages.add(id);
      selectedMessagesModels.add(message);
      setState(() {});
      return;
    }
    setState(() {
      hideReactions();
      final index = selectedMessages.indexOf(id);
      selectedMessages.remove(id);
      selectedMessagesModels.removeAt(index);
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
      if (selectedMessages.contains(message.id)) {
        final index = selectedMessages.indexOf(message.id);
        selectedMessages.remove(message.id);
        selectedMessagesModels.removeAt(index);
      } else {
        selectedMessages.add(message.id);
        selectedMessagesModels.add(message);
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
    setState(() {
      isEmojiKeyboardHide = false;
    });
  }

  void keyboardVisibility() {
    stream = visibility.onChange.listen((bool visible) {
      if (visible == true) {
        isEmojiKeyboardHide = true;
        setState(() {});
      }
    });
  }

  void showReactions(BuildContext context, Offset position, String messageID) {
    overlayEntry = createReactions(
        context, position, messageID, hideReactions, showEmojiKeyboard);
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
    stream.cancel();
    super.dispose();
  }
}
