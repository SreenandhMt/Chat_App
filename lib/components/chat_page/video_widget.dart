import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'package:chat_app/route/navigation_utils.dart';

import '../../core/colors.dart';

class ChatVideoWidget extends StatefulWidget {
  const ChatVideoWidget({
    super.key,
    required this.video,
    required this.thumbnail,
    required this.isSender,
    this.isGroup = false,
    this.videoSize,
    required this.time,
  });
  final String video;
  final String thumbnail;
  final bool isSender;
  final bool isGroup;
  final Size? videoSize;
  final String time;

  @override
  State<ChatVideoWidget> createState() => ChatVideoWidgetState();
}

class ChatVideoWidgetState extends State<ChatVideoWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: () {
        NavigationUtils.videoView(context, widget.video);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.chatColor(context, widget.isSender),
          borderRadius: BorderRadius.circular(17),
        ),
        constraints: BoxConstraints(
          maxHeight: size.height * 0.5,
          minHeight: 50,
          maxWidth: size.width * 0.70,
          minWidth: size.width * 0.55,
        ),
        margin: widget.isGroup ? null : EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Stack(
          children: [
            Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    child: Stack(
                      children: [
                        CachedNetworkImage(
                            imageUrl: widget.thumbnail, fit: BoxFit.cover),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          left: 0,
                          top: 0,
                          child: IconButton(
                            onPressed: () {
                              NavigationUtils.videoView(context, widget.video);
                            },
                            icon: Icon(
                              Icons.play_circle_filled,
                              size: 50,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
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
      ),
    );
  }
}
