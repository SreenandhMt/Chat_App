import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:chat_app/features/chat_page/views/chat_page.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';

import '../../../components/chat_page/chat_widget.dart';
import '../../../components/group_chat/chat_widget.dart';
import '../../../core/colors.dart';
import '../../../core/size.dart';
import '../../chat_page/views/chat_info_page.dart';

class GroupChatPage extends StatefulWidget {
  const GroupChatPage({super.key});

  @override
  State<GroupChatPage> createState() => _GroupChatPageState();
}

class _GroupChatPageState extends State<GroupChatPage> {
  final scrollController = ScrollController();
  bool isRecoding = false;
  List<int> selectedIndex = [];
  String? sticker;
  OverlayEntry? overlayEntry;

  Widget _buildReaction(String emoji) {
    return GestureDetector(
      onTap: () {
        hideReactions();
        // Handle reaction selection (you can update message state)
        print("Selected: $emoji");
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(emoji, style: TextStyle(fontSize: 24)),
      ),
    );
  }

  void hideReactions() {
    overlayEntry?.remove();
    overlayEntry = null;
  }

  void showReactions(BuildContext context, Offset position) {
    hideReactions(); // Remove any existing popup

    overlayEntry = OverlayEntry(
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
                _buildReaction("👍"),
                _buildReaction("❤️"),
                _buildReaction("😂"),
                _buildReaction("😮"),
                _buildReaction("😢"),
                _buildReaction("🙏"),
              ],
            ),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(overlayEntry!);
  }

  @override
  void initState() {
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
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 65),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundColor(context),
            ),
            padding: MediaQuery.paddingOf(context),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => context.pop(),
                  icon: Icon(Icons.arrow_back),
                ),
                if (selectedIndex.isEmpty) ...[
                  InkWell(
                    onTap: () => NavigationUtils.groupInfoPage(context),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                        ),
                        width10,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Innovative",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text("44 Members"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.video_camera, size: 36)),
                  // width10,
                  IconButton(
                      onPressed: () {}, icon: Icon(CupertinoIcons.phone)),
                  // width10,
                  IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.info)),
                ] else ...[
                  if (selectedIndex.length > 1) ...[
                    Text(selectedIndex.length.toString()),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.star_border_purple500_rounded),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete_outline_rounded),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.copy_rounded),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.forward_to_inbox_outlined),
                    ),
                  ] else ...[
                    Text(selectedIndex.length.toString()),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete_outline_rounded),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.reply),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.star_border_purple500_rounded),
                    ),
                    PopupMenuButton(
                      position: PopupMenuPosition.under,
                      splashRadius: 20,
                      shape: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Row(
                            children: [width10, Text("Info"), width50, width20],
                          ),
                          onTap: () => showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              hideReactions();
                              return InfoBottomSheet();
                            },
                          ),
                        ),
                        PopupMenuItem(
                          child: Row(
                            children: [width10, Text("Copy"), width50, width20],
                          ),
                        ),
                        PopupMenuItem(
                          child: Row(
                            children: [width10, Text("Edit"), width50, width20],
                          ),
                        )
                      ],
                      child: Icon(Icons.more_vert),
                    )
                  ],
                ],
                width10,
              ],
            ),
          )),
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
            Container(
              decoration: BoxDecoration(
                color: AppColors.backgroundColor(context),
                borderRadius: BorderRadius.circular(2),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: isRecoding
                  ? AudioRecodingWidget()
                  : Column(
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: 50,
                            maxHeight: 150,
                          ),
                          child: TextFormField(
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                            contentInsertionConfiguration:
                                ContentInsertionConfiguration(
                              onContentInserted: (content) async {
                                //getting url here
                                debugPrint("Inserted content: ${content.uri}");
                                if (content.mimeType != "image/gif") {
                                  sticker =
                                      await _convertUriToFile(content.data!);
                                  log(sticker.toString());
                                  setState(() {});
                                }
                              },
                              allowedMimeTypes: [
                                'image/png',
                                'image/jpeg',
                                // 'image/webp',
                                'image/gif',
                              ],
                            ),
                            decoration: InputDecoration(
                                hintText: "Type your message...",
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
                            Icon(CupertinoIcons.smiley),
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
            )
          ],
        ),
      ),
    );
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
