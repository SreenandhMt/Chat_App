import 'package:chat_app/core/size.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../../../core/colors.dart';
import '../../../route/navigation_utils.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: AppColors.themeColor(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration:
                BoxDecoration(color: AppColors.backgroundColor(context)),
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://randomuser.me/api/portraits/men/50.jpg'),
                ),
                SizedBox(height: 20),
                Text(
                  'John Doe',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '+91 93848588684',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                height20,
                Row(
                  spacing: 10,
                  children: [
                    width5,
                    Expanded(
                      child: InkWell(
                        onTap: () => NavigationUtils.voiceCallPage(context),
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.grey(context),
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Column(
                            spacing: 10,
                            children: [
                              Icon(Icons.call),
                              Text(LocaleData.voiceCallText.getString(context))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () => NavigationUtils.videoCallPage(context),
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.grey(context),
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Column(
                            spacing: 10,
                            children: [
                              Icon(CupertinoIcons.video_camera),
                              Text(LocaleData.videoCallText.getString(context))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        //add share system
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.grey(context),
                              borderRadius: BorderRadius.circular(10)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                          child: Column(
                            spacing: 10,
                            children: [
                              Icon(Icons.share_rounded),
                              Text(LocaleData.shareText.getString(context)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    width5,
                  ],
                ),
              ],
            ),
          ),
          height10,
          Container(
            decoration:
                BoxDecoration(color: AppColors.backgroundColor(context)),
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                InkWell(
                  child: Row(
                    children: [
                      width20,
                      Icon(
                        Icons.person_add_alt,
                        size: 30,
                      ),
                      width15,
                      Text(
                        LocaleData.addToContactText.getString(context),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          height10,
          Container(
            decoration:
                BoxDecoration(color: AppColors.backgroundColor(context)),
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                InkWell(
                  child: Row(
                    children: [
                      width20,
                      Icon(
                        Icons.notifications,
                        size: 30,
                      ),
                      width15,
                      Text(
                        LocaleData.muteNotificationsText.getString(context),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Switch(
                        value: false,
                        onChanged: (value) {},
                      ),
                      width10,
                    ],
                  ),
                ),
              ],
            ),
          ),
          height10,
          Container(
            decoration:
                BoxDecoration(color: AppColors.backgroundColor(context)),
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    width20,
                    Text(
                      LocaleData.aboutChatTitleText.getString(context),
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                height5,
                Row(
                  children: [
                    width20,
                    Text(
                      "Hello. I'm using CometChat.",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                height5,
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: Divider(
                    thickness: 0.3,
                  ),
                ),
                height5,
                InkWell(
                  child: Row(
                    children: [
                      width20,
                      Text(
                        "+91 93848588684",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.chat,
                        color: AppColors.secondary(context),
                      ),
                      width15,
                      Icon(
                        Icons.call,
                        color: AppColors.secondary(context),
                      ),
                      width15,
                      Icon(
                        Icons.videocam_outlined,
                        color: AppColors.secondary(context),
                        size: 30,
                      ),
                      width10,
                    ],
                  ),
                ),
              ],
            ),
          ),
          height10,
          Container(
            color: AppColors.backgroundColor(context),
            child: Column(
              children: [
                height20,
                InkWell(
                  child: Row(
                    children: [
                      width20,
                      Icon(
                        Icons.block,
                        color: Colors.red,
                        size: 30,
                      ),
                      width15,
                      Text(
                        LocaleData.blockUserText.getString(context),
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.red),
                      ),
                    ],
                  ),
                ),
                height20,
                InkWell(
                  child: Row(
                    children: [
                      width20,
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 30,
                      ),
                      width15,
                      Text(
                        LocaleData.reportUserText.getString(context),
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.red),
                      ),
                    ],
                  ),
                ),
                height20,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
