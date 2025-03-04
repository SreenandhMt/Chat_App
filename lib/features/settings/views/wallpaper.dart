import 'package:chat_app/components/chat_page/chat_widget.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class WallpaperSettings extends StatelessWidget {
  const WallpaperSettings({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      AppColors.chatBackgroundColor(context),
      const Color(0x9C000000),
      const Color.fromARGB(144, 255, 193, 7),
      const Color.fromARGB(182, 76, 175, 79),
      const Color.fromARGB(170, 233, 30, 98),
      const Color.fromARGB(162, 255, 255, 255),
      const Color.fromARGB(146, 0, 0, 0)
    ];
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleData.wallpaperTitleText.getString(context)),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: List.generate(
            colors.length,
            (index) => Container(
              width: (size.width / 2) * 0.96,
              height: size.width * 0.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colors[index]),
              child: Column(
                children: [
                  ChatWidget(isSender: true),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
