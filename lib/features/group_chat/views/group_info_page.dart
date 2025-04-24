import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

import 'package:chat_app/components/group_chat/delete_group.dart';
import 'package:chat_app/components/group_chat/leave_group.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';
import 'package:chat_app/features/home/models/chat_model.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:chat_app/route/navigation_utils.dart';

import '../../../components/add_list_bottom_sheet.dart';
import '../../../core/error_snackbar.dart';
import '../../contact/view_models/bloc/contact_bloc.dart';

class GroupInfoPage extends StatelessWidget {
  const GroupInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<GroupBloc>().add(GroupEvent.loadGroupInfo());
    return BlocConsumer<GroupBloc, GroupState>(listener: (context, state) {
      if (state is GroupData) {
        if (state.isError != null) {
          showExpandableSnackBar(
              context,
              state.isError!.message,
              "Error Group Chat: ${state.isError!.details}",
              state.isError!.code);
          context.read<GroupBloc>().add(GroupEvent.clearError());
        }
      }
    }, builder: (context, state) {
      return state.when(
        groupData: (groupData,
            groupMembers,
            allGroupMembers,
            blockedGroupMembers,
            messageData,
            wallpaperIndex,
            messages,
            isLoading,
            inputLoading,
            isError) {
          if (groupMembers == null && blockedGroupMembers == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final membersCanAddMembers = (groupData?.memberCanAddMember != null &&
                  groupData!.memberCanAddMember! ||
              groupData!.admins
                  .contains(FirebaseAuth.instance.currentUser!.uid));
          return Scaffold(
            backgroundColor: AppColors.themeColor(context),
            appBar: AppBar(
              title: Text("Group Info"),
            ),
            body: ListView(
              children: [
                Container(
                  color: AppColors.backgroundColor(context),
                  child: Column(
                    children: [
                      height20,
                      CircleAvatar(
                        radius: 55,
                        backgroundImage:
                            NetworkImage(groupData.groupImage ?? ""),
                      ),
                      height5,
                      Text(
                        groupData.groupName ?? "",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "${groupData.participants.length} Members",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      height10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              if (membersCanAddMembers) {
                                context.read<ContactBloc>().add(
                                    ContactEvent.addGroupMemberList(
                                        members: groupData.participants));
                                NavigationUtils.addMembers(context);
                              }
                            },
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: !membersCanAddMembers
                                      ? AppColors.grey(context).withOpacity(0.5)
                                      : AppColors.grey(context),
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: Column(
                                spacing: 10,
                                children: [
                                  Icon(Icons.person_add_alt),
                                  Text(
                                    LocaleData.addMembersText
                                        .getString(context),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () =>
                                NavigationUtils.groupMembersPage(context),
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
                                  Icon(Icons.people_outline_sharp),
                                  Text(LocaleData.viewMembersText
                                      .getString(context))
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () =>
                                NavigationUtils.groupBannedMembers(context),
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
                                  Icon(Icons.block),
                                  Text(LocaleData.bannedMembersText
                                      .getString(context)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      height10,
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
                              LocaleData.muteNotificationsText
                                  .getString(context),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacer(),
                            Switch(
                              value: groupData.muted,
                              onChanged: (value) {
                                if (groupData.muted) {
                                  context.read<GroupBloc>().add(
                                      GroupEvent.unmuteNotification(uid: ""));
                                } else {
                                  context.read<GroupBloc>().add(
                                      GroupEvent.muteNotification(uid: ""));
                                }
                              },
                            ),
                            width10,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (groupData.admins
                    .contains(FirebaseAuth.instance.currentUser!.uid)) ...[
                  height10,
                  Container(
                      decoration: BoxDecoration(
                          color: AppColors.backgroundColor(context)),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 10,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text("Members can:"),
                            ),
                            InkWell(
                              child: Row(
                                children: [
                                  width20,
                                  Icon(
                                    Icons.edit,
                                    size: 25,
                                  ),
                                  width15,
                                  Text(
                                    "Edit Settings",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  Switch(
                                    value: groupData.memberCanEdit ?? false,
                                    onChanged: (value) {
                                      context.read<GroupBloc>().add(
                                          GroupEvent.editPermission(
                                              memberCanEdit: value));
                                    },
                                  ),
                                  width10,
                                ],
                              ),
                            ),
                            InkWell(
                              child: Row(
                                children: [
                                  width20,
                                  Icon(
                                    Icons.message,
                                    size: 25,
                                  ),
                                  width15,
                                  Text(
                                    "Send message",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  Switch(
                                    value: groupData.memberCanMessage ?? false,
                                    onChanged: (value) {
                                      context.read<GroupBloc>().add(
                                          GroupEvent.editPermission(
                                              memberCanMessage: value));
                                    },
                                  ),
                                  width10,
                                ],
                              ),
                            ),
                            InkWell(
                              child: Row(
                                children: [
                                  width20,
                                  Icon(
                                    Icons.person_add,
                                    size: 25,
                                  ),
                                  width15,
                                  Text(
                                    "Add other Members",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  Switch(
                                    value:
                                        groupData.memberCanAddMember ?? false,
                                    onChanged: (value) {
                                      context.read<GroupBloc>().add(
                                          GroupEvent.editPermission(
                                              memberCanAddMember: value));
                                    },
                                  ),
                                  width10,
                                ],
                              ),
                            ),
                          ])),
                ],
                height10,
                Container(
                  color: AppColors.backgroundColor(context),
                  child: Column(
                    children: [
                      ...List.generate(
                        groupData.participants.length > 5
                            ? 5
                            : groupData.participants.length + 1,
                        (index) => GroupUserWidget(
                            groupData: groupData,
                            index: index,
                            groupMembers: groupMembers!),
                      ),
                      if (groupData.participants.length > 5) ...[
                        height20,
                        InkWell(
                          onTap: () =>
                              NavigationUtils.groupMembersPage(context),
                          child: Row(
                            children: [
                              width30,
                              Text(
                                context.formatString(
                                    LocaleData.viewAllMembersText, [9]),
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primary(context)),
                              ),
                              Spacer()
                            ],
                          ),
                        ),
                      ],
                      height20,
                    ],
                  ),
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
                                  AddToList(chatId: groupData.chatId));
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
                      if (groupData.createdBy !=
                          FirebaseAuth.instance.currentUser!.uid) ...[
                        height20,
                        InkWell(
                          onTap: () => showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              child: LeaveGroupDialog(),
                            ),
                          ),
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
                                LocaleData.leaveGroupText.getString(context),
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
                      if (groupData.createdBy ==
                          FirebaseAuth.instance.currentUser!.uid) ...[
                        height20,
                        InkWell(
                          onTap: () => showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              child: DeleteGroupDialog(),
                            ),
                          ),
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
                                LocaleData.deleteAndExitText.getString(context),
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        height20,
                      ]
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        createGroupData: (groupName,
                groupDescription,
                groupImagePath,
                memberCanEdit,
                memberCanAddMember,
                memberCanMessage,
                contacts,
                selectedContacts) =>
            Center(
          child: CircularProgressIndicator(),
        ),
      );
    });
  }
}

class GroupUserWidget extends StatelessWidget {
  const GroupUserWidget({
    super.key,
    required this.groupData,
    required this.index,
    required this.groupMembers,
  });
  final ChatModel groupData;
  final int index;
  final Map<String, UserModels> groupMembers;

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    if (index == 0) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[300],
            backgroundImage: NetworkImage(user.photoURL ?? ""),
          ),
          title: Text("You"),
          subtitle: Text(user.phoneNumber ?? ""),
          trailing: groupData.admins.contains(user.uid)
              ? Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.grey(context)),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text("Admin"))
              : null,
        ),
      );
    }
    if (index != 0 && groupData.participants[index - 1] == user.uid) {
      return SizedBox.shrink();
    }
    final member = groupMembers[groupData.participants[index - 1]]!;
    if (!groupData.admins.contains(user.uid)) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[300],
            backgroundImage: NetworkImage(member.imageUrl ?? ""),
          ),
          title: Text(member.name),
          subtitle: Text(member.phoneNumber),
          trailing: groupData.admins.contains(groupData.participants[index - 1])
              ? Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.grey(context)),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text("Admin"))
              : null,
        ),
      );
    }
    return PopupMenuButton(
      itemBuilder: (context) => [
        if (groupData.admins.contains(member.uid))
          PopupMenuItem(
            child: Row(
              children: [
                width10,
                Text("Remove Admin"),
                width50,
                width20,
              ],
            ),
            onTap: () {
              context
                  .read<GroupBloc>()
                  .add(GroupEvent.removeAdmin(uid: member.uid));
            },
          )
        else
          PopupMenuItem(
            child: Row(
              children: [
                width10,
                Text("Make Admin"),
                width50,
                width20,
              ],
            ),
            onTap: () {
              context
                  .read<GroupBloc>()
                  .add(GroupEvent.makeAdmin(uid: member.uid));
            },
          ),
        PopupMenuItem(
          child: Row(
            children: [
              width10,
              Text("Remove"),
              width50,
              width20,
            ],
          ),
          onTap: () {
            context.read<GroupBloc>().add(GroupEvent.kickUser(uid: member.uid));
          },
        ),
        PopupMenuItem(
          child: Row(
            children: [
              width10,
              Text("Block"),
              width50,
              width20,
            ],
          ),
          onTap: () {
            context
                .read<GroupBloc>()
                .add(GroupEvent.blockUser(uid: member.uid));
          },
        ),
      ],
      child: Builder(
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[300],
                backgroundImage: NetworkImage(member.imageUrl ?? ""),
              ),
              title: Text(member.name),
              subtitle: Text(member.phoneNumber),
              trailing: groupData.admins
                      .contains(groupData.participants[index - 1])
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.grey(context)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text("Admin"))
                  : null,
            ),
          );
        },
      ),
    );
  }
}
