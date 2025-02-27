import 'package:chat_app/components/group_chat/delete_group.dart';
import 'package:chat_app/components/group_chat/leave_group.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupInfoPage extends StatelessWidget {
  const GroupInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                CircleAvatar(radius: 55),
                height5,
                Text(
                  "Group Name",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Text(
                  "44 Members",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                height10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () => NavigationUtils.addMembers(context),
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.grey(context),
                            borderRadius: BorderRadius.circular(10)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Column(
                          spacing: 10,
                          children: [
                            Icon(Icons.person_add_alt),
                            Text("Add Members")
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => NavigationUtils.groupMembersPage(context),
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.grey(context),
                            borderRadius: BorderRadius.circular(10)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Column(
                          spacing: 10,
                          children: [
                            Icon(Icons.people_outline_sharp),
                            Text("View Members")
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => NavigationUtils.groupBannedMembers(context),
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
                            Icon(Icons.block),
                            Text("Banned members"),
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
            color: AppColors.backgroundColor(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
                  child: Text(
                    "25 Members",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ),
                ...List.generate(
                  6,
                  (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      backgroundImage: NetworkImage(
                          "https://randomuser.me/api/portraits/men/1.jpg"),
                    ),
                    title: Text("User $index"),
                    subtitle: Text("Hello"),
                    trailing: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.grey(context)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Text("Admin")),
                  ),
                ),
                height20,
                InkWell(
                  onTap: () => NavigationUtils.groupMembersPage(context),
                  child: Row(
                    children: [
                      width30,
                      Text(
                        "View All (30 more)",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primary(context)),
                      ),
                      Spacer()
                    ],
                  ),
                ),
                height20,
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
                        "Leave group",
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
                        "Delete and Exit",
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
