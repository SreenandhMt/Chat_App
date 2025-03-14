import 'dart:io';

import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/views/introduction_page.dart';
import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final TextEditingController _groupNameController = TextEditingController();
String _avatarPath = "";

class CreateGroupPage extends StatefulWidget {
  const CreateGroupPage({super.key});

  @override
  State<CreateGroupPage> createState() => _CreateGroupPageState();
}

class _CreateGroupPageState extends State<CreateGroupPage> {
  bool memberCanAddMember = false,
      memberCanEdit = false,
      memberCanMessage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Group'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GroupWidget(),
          height10,
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text("Members can:"),
          ),
          height10,
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            leading: Padding(
              padding: const EdgeInsets.only(right: 10, left: 5),
              child: Icon(
                Icons.edit_outlined,
                size: 25,
              ),
            ),
            title: Text(
              "Edit group settings",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
                "This includes the name, icon, description, and the ability to pin, keep or unkeep message."),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Switch(
                  value: memberCanEdit,
                  onChanged: (value) {
                    memberCanEdit = value;
                    setState(() {});
                  },
                  trackColor: memberCanEdit
                      ? null
                      : WidgetStatePropertyAll(
                          AppColors.backgroundColor(context)),
                  activeColor: AppColors.backgroundColor(context),
                  activeTrackColor: AppColors.secondary(context),
                )
              ],
            ),
          ),
          height10,
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            leading: Padding(
                padding: const EdgeInsets.only(right: 10, left: 5),
                child: Icon(Icons.message_rounded)),
            title: Text(
              "Send Message",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Switch(
              value: memberCanMessage,
              onChanged: (value) {
                memberCanMessage = value;
                setState(() {});
              },
              trackColor: memberCanMessage
                  ? null
                  : WidgetStatePropertyAll(AppColors.backgroundColor(context)),
              activeColor: AppColors.backgroundColor(context),
              activeTrackColor: AppColors.secondary(context),
            ),
          ),
          height5,
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            leading: Padding(
                padding: const EdgeInsets.only(right: 10, left: 5),
                child: Icon(Icons.person_add_alt_1_outlined)),
            title: Text(
              "Add members",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Switch(
              value: memberCanAddMember,
              onChanged: (value) {
                memberCanAddMember = value;
                setState(() {});
              },
              trackColor: memberCanAddMember
                  ? null
                  : WidgetStatePropertyAll(AppColors.backgroundColor(context)),
              activeColor: AppColors.backgroundColor(context),
              activeTrackColor: AppColors.secondary(context),
            ),
          ),
          Spacer(),
          AppButton(
            title: "Create",
            onPressed: () {
              context.read<GroupBloc>().add(
                    GroupEvent.createGroupLoad(
                        groupName: _groupNameController.text,
                        groupDescription: "",
                        groupImagePath: _avatarPath,
                        memberCanEdit: memberCanEdit,
                        memberCanAddMember: memberCanAddMember,
                        memberCanMessage: memberCanMessage),
                  );
              NavigationUtils.addMembers(context);
            },
          )
        ],
      ),
    );
  }
}

class GroupWidget extends StatefulWidget {
  const GroupWidget({super.key});

  @override
  State<GroupWidget> createState() => _GroupWidgetState();
}

class _GroupWidgetState extends State<GroupWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        children: [
          InkWell(
            onTap: () async {
              final result =
                  await FilePicker.platform.pickFiles(type: FileType.image);
              if (result != null) {
                _avatarPath = result.files.first.path!;
              }
            },
            child: CircleAvatar(
              radius: 30,
              backgroundImage:
                  _avatarPath.isEmpty ? null : FileImage(File(_avatarPath)),
              child: Icon(Icons.camera_alt_rounded),
            ),
          ),
          Expanded(
            child: TextFormField(
              controller: _groupNameController,
              onChanged: (value) => setState(() {}),
              decoration: InputDecoration(
                hintText: "Group name",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          if (_groupNameController.text.isNotEmpty)
            IconButton(
                onPressed: () {
                  setState(() {
                    _groupNameController.clear();
                  });
                },
                icon: Icon(Icons.close_sharp)),
        ],
      ),
    );
  }
}
