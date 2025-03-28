import 'package:chat_app/components/chat_page/chat_widget.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/wallpaper_colors.dart';
import 'package:chat_app/features/chat_page/models/message_model.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../view_model/bloc/settings_bloc.dart';

class WallpaperSettings extends StatelessWidget {
  const WallpaperSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
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
                wallpaperColor(context).length,
                (index) => InkWell(
                  onTap: () {
                    context
                        .read<SettingsBloc>()
                        .add(SettingsEvent.changeWallpaper(index: index));
                  },
                  child: Container(
                    width: (size.width / 2) * 0.96,
                    height: size.width * 0.7,
                    decoration: BoxDecoration(
                        border: state.wallpaperIndex == index
                            ? Border.all(
                                width: 1, color: AppColors.primary(context))
                            : null,
                        borderRadius: BorderRadius.circular(10),
                        color: wallpaperColor(context)[index]),
                    child: Column(
                      children: [
                        ChatWidget(
                          messageModel: MessageModel(
                              id: "",
                              messageType: "text",
                              reactions: {},
                              isSeenBy: [],
                              senderId: "",
                              isSender: true,
                              timestamp: DateTime.now().microsecondsSinceEpoch,
                              time: "10:01 PM",
                              message: "Hey"),
                        ),
                        ChatWidget(
                          messageModel: MessageModel(
                              id: "",
                              messageType: "text",
                              reactions: {},
                              isSeenBy: [],
                              senderId: "",
                              isSender: false,
                              timestamp: DateTime.now().microsecondsSinceEpoch,
                              time: "10:03 PM",
                              message: "Hey"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
