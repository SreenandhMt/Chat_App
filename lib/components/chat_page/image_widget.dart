import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat_app/components/image_view.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/core/colors.dart';

class ChatImageWidget extends StatelessWidget {
  const ChatImageWidget({
    super.key,
    required this.image,
    required this.isSender,
    this.isGroup = false,
    this.size,
    required this.time,
  });
  final String image;
  final bool isSender;
  final bool isGroup;
  final Size? size;
  final String time;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: () {
        NavigationUtils.imageView(context, image);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.chatColor(context, isSender),
          borderRadius: BorderRadius.circular(17),
        ),
        constraints: BoxConstraints(
          maxHeight: screenSize.height * 0.5,
          minHeight: 150,
          maxWidth: screenSize.width * 0.70,
          minWidth: 100,
        ),
        margin: isGroup ? null : EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(vertical: 9, horizontal: 9),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 5,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 5,
                children: [
                  if (isSender)
                    Icon(
                      Icons.check,
                      size: 13,
                      color: Colors.blue,
                    ),
                  Text(
                    time,
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
