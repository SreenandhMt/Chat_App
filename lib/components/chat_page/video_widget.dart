import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../core/colors.dart';

class ChatVideoWidget extends StatefulWidget {
  const ChatVideoWidget({
    super.key,
    required this.video,
    required this.isSender,
    this.isGroup = false,
    this.videoSize,
    required this.time,
  });
  final String video;
  final bool isSender;
  final bool isGroup;
  final Size? videoSize;
  final String time;

  @override
  State<ChatVideoWidget> createState() => ChatVideoWidgetState();
}

class ChatVideoWidgetState extends State<ChatVideoWidget> {
  late VideoPlayerController controller;

  Future<void> getVideoThumbnail(String videoPath) async {
    controller = VideoPlayerController.networkUrl(Uri.parse(widget.video))
      ..initialize().then((value) {
        if (mounted) {
          setState(() {});
        }
      });
  }

  @override
  void initState() {
    getVideoThumbnail(widget.video);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.chatColor(context, widget.isSender),
        borderRadius: BorderRadius.circular(17),
      ),
      constraints: BoxConstraints(
        maxHeight: size.height * 0.5,
        minHeight: 150,
        maxWidth: size.width * 0.70,
        minWidth: size.width * 0.6,
      ),
      margin: widget.isGroup ? null : EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: controller.value.isInitialized
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      width: controller.value.size.width,
                      height: controller.value.size.height,
                      child: Stack(
                        children: [
                          VideoPlayer(controller),
                          Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              onPressed: () {
                                controller.value.isPlaying
                                    ? controller.pause()
                                    : controller.play();
                                setState(() {});
                              },
                              icon: Icon(
                                controller.value.isPlaying
                                    ? Icons.pause_circle_filled_rounded
                                    : Icons.play_circle_filled,
                                size: 50,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                : widget.videoSize == null
                    ? SizedBox.shrink()
                    : SizedBox(
                        width: widget.videoSize!.width,
                        height: widget.videoSize!.height,
                      ),
          ),
          Positioned(
            bottom: 0,
            right: 5,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 5,
              children: [
                if (widget.isSender)
                  Icon(
                    Icons.check,
                    size: 13,
                    color: Colors.blue,
                  ),
                Text(
                  widget.time,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
