import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as foundation;

import '../../core/colors.dart';

class CustomEmojiKeyboard extends StatefulWidget {
  const CustomEmojiKeyboard({
    super.key,
    required this.emojiController,
    this.isHide = true,
  });
  final TextEditingController emojiController;
  final bool isHide;

  @override
  State<CustomEmojiKeyboard> createState() => _CustomEmojiKeyboardState();
}

class _CustomEmojiKeyboardState extends State<CustomEmojiKeyboard> {
  @override
  Widget build(BuildContext context) {
    if (widget.isHide) {
      return SizedBox.shrink();
    }
    return EmojiPicker(
      onEmojiSelected: (Category? category, Emoji? emoji) {},
      onBackspacePressed: () {},
      textEditingController: widget.emojiController,
      config: Config(
        height: 256,
        checkPlatformCompatibility: true,
        emojiTextStyle: TextStyle(
          fontSize: 28 *
              (foundation.defaultTargetPlatform == TargetPlatform.iOS
                  ? 1.30
                  : 1.0),
        ),
        emojiViewConfig: EmojiViewConfig(
          backgroundColor: AppColors.backgroundColor(context),
          emojiSizeMax: 28 *
              (foundation.defaultTargetPlatform == TargetPlatform.iOS
                  ? 1.20
                  : 1.0),
        ),
        viewOrderConfig: ViewOrderConfig(
          top: EmojiPickerItem.searchBar,
          middle: EmojiPickerItem.emojiView,
          bottom: EmojiPickerItem.categoryBar,
        ),
        skinToneConfig: const SkinToneConfig(),
        categoryViewConfig: CategoryViewConfig(
          backgroundColor: AppColors.backgroundColor(context),
        ),
        searchViewConfig: SearchViewConfig(
          buttonIconColor: Colors.white,
          backgroundColor: AppColors.backgroundColor(context),
        ),
        bottomActionBarConfig: BottomActionBarConfig(
          backgroundColor: AppColors.backgroundColor(context),
        ),
      ),
    );
  }
}
