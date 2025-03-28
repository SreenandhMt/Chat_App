import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/fonts.dart';
import '../../core/size.dart';

class VoiceCallWidget extends StatelessWidget {
  const VoiceCallWidget({
    super.key,
    required this.width,
    required this.height,
    required this.imageUrl,
    required this.name,
  });
  final double width;
  final double height;
  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(color: AppColors.grey(context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 40, backgroundImage: NetworkImage(imageUrl)),
            height10,
            Text(
              name,
              style: AppFonts.titleFont(context),
            )
          ],
        ),
      ),
    );
  }
}
