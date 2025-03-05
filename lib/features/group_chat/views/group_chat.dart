import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:chat_app/components/chat_input.dart';
import 'package:chat_app/components/chat_page/reaction_overlay.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:path_provider/path_provider.dart';

import '../../../components/chat_page/emoji_widget.dart';
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
  List<int> selectedIndex = [];
  String? sticker;
  OverlayEntry? overlayEntry;

  @override
  void initState() {
    keyboardVisibility();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        scrollController.jumpTo(scrollController.position.maxScrollExtent);
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
    return Scaffold(
      backgroundColor: AppColors.chatBackgroundColor(context),
      appBar: groupChatAppBar(context,
          selectedIndex: selectedIndex, hideReactions: hideReactions),
      body: Container(
        decoration: BoxDecoration(),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                dragStartBehavior: DragStartBehavior.down,
                controller: scrollController,
                children: List.generate(
                  10,
                  (index) => GestureDetector(
                    onTap: () => setState(() {
                      hideReactions();
                      selectedIndex.remove(index);
                    }),
                    onLongPressStart: (details) => setState(() {
                      showReactions(
                          context, Offset(70, details.globalPosition.dy - 30));
                      if (selectedIndex.contains(index)) {
                        selectedIndex.remove(index);
                      } else {
                        selectedIndex.add(index);
                      }
                    }),
                    child: Container(
                      decoration: BoxDecoration(
                        color: selectedIndex.contains(index)
                            ? AppColors.primary(context).withOpacity(0.1)
                            : null,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: GroupChatWidget(
                        isSender: (index == 3 || index == 1),
                        audio: index == 3
                            ? "https://webaudioapi.com/samples/audio-tag/chrono.mp3"
                            : null,
                        image: index == 4
                            ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNSgGbqmow7OzxHkEu_F2x9Z91uA61XZaEHg&s"
                            : null,
                        url: index == 5
                            ? "https://youtu.be/XvHlM3ZJaJo?si=OCKhQ0CYB-IGM4t4"
                            : null,
                        pollData: index == 6 ? true : null,
                        pdf: index == 7 ? "" : null,
                        sticker: index == 8 && sticker != null ? sticker : null,
                        video: index == 9
                            ? "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"
                            : null,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ChatInput(
              stickerSelected: (content) async {
                //getting url here
                debugPrint("Inserted content: ${content.uri}");
                if (content.mimeType != "image/gif") {
                  sticker = await _convertUriToFile(content.data!);
                  log(sticker.toString());
                  setState(() {});
                }
              },
              controller: TextEditingController(),
              showEmojiKeyboard: showEmojiKeyboard,
            ),
            CustomEmojiKeyboard(
              emojiController: controller,
              isHide: isEmojiKeyboardHide,
            ),
          ],
        ),
      ),
    );
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

  void showReactions(BuildContext context, Offset position) {
    overlayEntry =
        createReactions(context, position, hideReactions, showEmojiKeyboard);
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
