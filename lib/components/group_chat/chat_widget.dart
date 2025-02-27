import 'package:chat_app/core/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../chat_page/chat_widget.dart';

class GroupChatWidget extends StatefulWidget {
  const GroupChatWidget({
    super.key,
    this.isSender = false,
    this.image,
    this.audio,
    this.url,
    this.pollData,
    this.pdf,
    this.sticker,
    this.video,
  });
  final bool isSender;
  final String? image;
  final String? audio;
  final String? url;
  final bool? pollData;
  final String? pdf;
  final String? sticker;
  final String? video;

  @override
  State<GroupChatWidget> createState() => GroupChatWidgetState();
}

class GroupChatWidgetState extends State<GroupChatWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    if (widget.isSender) {
      return Align(
        alignment:
            widget.isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 69,
            maxWidth: size.width * 0.79,
            minWidth: size.width * 0.3,
          ),
          child: Stack(
            children: [
              ChatItem(
                  audio: widget.audio,
                  image: widget.image,
                  isSender: widget.isSender,
                  pdf: widget.pdf,
                  pollData: widget.pollData,
                  sticker: widget.sticker,
                  url: widget.url,
                  video: widget.video),
              Positioned(
                  bottom: 0,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.grey(context),
                        borderRadius: BorderRadius.circular(20)),
                    padding:
                        EdgeInsets.only(left: 5, right: 5, bottom: 3, top: 3),
                    child: Row(
                      children: [
                        Text("😆"),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: CircleAvatar(),
          ),
          width5,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "George Alan",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.yellow),
              ),
              height5,
              Align(
                alignment: widget.isSender
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 70,
                    maxWidth: size.width * 0.79,
                    minWidth: size.width * 0.3,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: ChatItem(
                            isGroup: true,
                            audio: widget.audio,
                            image: widget.image,
                            isSender: widget.isSender,
                            pdf: widget.pdf,
                            pollData: widget.pollData,
                            sticker: widget.sticker,
                            url: widget.url,
                            video: widget.video),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 20,
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.grey(context),
                                borderRadius: BorderRadius.circular(20)),
                            padding: EdgeInsets.only(
                                left: 5, right: 5, bottom: 3, top: 3),
                            child: Row(
                              children: [
                                Text("😆"),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
