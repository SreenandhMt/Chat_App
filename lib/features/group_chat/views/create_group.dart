import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/views/introduction_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateGroupPage extends StatelessWidget {
  const CreateGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Group'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.camera_alt_rounded),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Group name",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Icon(Icons.close_sharp)
              ],
            ),
          ),
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
                  value: true,
                  onChanged: (value) {},
                  // trackColor:
                  //     WidgetStatePropertyAll(AppColors.backgroundColor(context)),
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
              value: false,
              onChanged: (value) {},
              trackColor:
                  WidgetStatePropertyAll(AppColors.backgroundColor(context)),
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
              value: true,
              onChanged: (value) {},
              // trackColor:
              //     WidgetStatePropertyAll(AppColors.backgroundColor(context)),
              activeColor: AppColors.backgroundColor(context),
              activeTrackColor: AppColors.secondary(context),
            ),
          ),
          Spacer(),
          AppButton(title: "Create")
        ],
      ),
    );
  }
}
