import 'package:chat_app/components/add_list_bottom_sheet.dart';
import 'package:chat_app/components/chat_page/dialogs/block_user_dialog.dart';
import 'package:chat_app/components/chat_page/dialogs/report_user_dialog.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/chat_page/view_models/bloc/chat_bloc.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../core/colors.dart';
import '../../../core/error_snackbar.dart';
import '../../../route/navigation_utils.dart';
import '../../calls_screen/view_models/bloc/calling_bloc.dart';
import '../../group_chat/view_model/bloc/group_bloc.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(listener: (context, state) {
      if (state.isError != null) {
        showExpandableSnackBar(context, state.isError!.message,
            "Error Chat Page: ${state.isError!.details}", state.isError!.code);
        context.read<ChatBloc>().add(ChatEvent.clearError());
      }
    }, builder: (context, state) {
      if (state.chatData == null) {
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
      final user = state.chatData!.userModel!;
      return Scaffold(
        appBar: AppBar(),
        backgroundColor: AppColors.themeColor(context),
        body: ListView(
          children: [
            Container(
              decoration:
                  BoxDecoration(color: AppColors.backgroundColor(context)),
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(user.imageUrl!),
                  ),
                  SizedBox(height: 20),
                  Text(
                    user.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    user.phoneNumber,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  height20,
                  Row(
                    spacing: 10,
                    children: [
                      width5,
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            context.read<CallingBloc>().add(
                                CallingEvent.startVoiceCalling(
                                    receiver: state.chatData!.userModel!));
                            NavigationUtils.voiceCallPage(context);
                          },
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
                                Text(
                                    LocaleData.voiceCallText.getString(context))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            context.read<CallingBloc>().add(
                                CallingEvent.startVideoCalling(
                                    receiver: state.chatData!.userModel!));
                            NavigationUtils.videoCallPage(context);
                          },
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
                                Text(
                                    LocaleData.videoCallText.getString(context))
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 15),
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
            if (state.isSavedContact) ...[
              height10,
              Container(
                decoration:
                    BoxDecoration(color: AppColors.backgroundColor(context)),
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () async {
                        var status = await Permission.contacts.request();
                        if (status.isGranted) {
                          FlutterContacts.openExternalInsert(Contact(
                            id: user.uid,
                            displayName: user.name,
                            phones: [Phone(user.phoneNumber)],
                          ));
                        }
                      },
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
              )
            ],
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
                          value: state.chatData!.muted,
                          onChanged: (value) {
                            context
                                .read<ChatBloc>()
                                .add(ChatEvent.muteChat(status: value));
                          },
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
                        user.about,
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
                          user.phoneNumber,
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
              decoration:
                  BoxDecoration(color: AppColors.backgroundColor(context)),
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Common Groups"),
                    ),
                    ...List.generate(
                      state.commonGroups.length,
                      (index) {
                        final group = state.commonGroups[index];
                        return InkWell(
                          onTap: () async {
                            if (group.isGroup) {
                              context
                                  .read<GroupBloc>()
                                  .add(GroupEvent.loadData(chat: group));
                              NavigationUtils.groupChattingPage(context);
                              return;
                            }
                          },
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(group.groupImage ?? ""),
                            ),
                            title: Text(
                              group.groupName ?? "",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 20,
                            ),
                          ),
                        );
                      },
                    ),
                  ]),
            ),
            height10,
            Container(
                color: AppColors.backgroundColor(context),
                child: Column(children: [
                  height20,
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) =>
                              AddToList(chatId: state.chatData!.chatId));
                    },
                    child: Row(
                      children: [
                        width20,
                        Icon(
                          Icons.people_alt_outlined,
                          size: 30,
                        ),
                        width15,
                        Text(
                          "Add to List",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  height20,
                ])),
            height10,
            Container(
              color: AppColors.backgroundColor(context),
              child: Column(
                children: [
                  height20,
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          child: BlockUserDialog(
                              uid: user.uid, userName: user.name),
                        ),
                      );
                    },
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
                          context.formatString(
                              LocaleData.blockUserText.getString(context),
                              [user.name]),
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
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          child: ReportUserDialog(
                              uid: user.uid, userName: user.name),
                        ),
                      );
                    },
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
                          context.formatString(
                              LocaleData.reportUserText.getString(context),
                              [user.name]),
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
    });
  }
}
