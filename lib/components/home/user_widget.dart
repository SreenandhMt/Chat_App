import 'package:chat_app/core/colors.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(
          index > 5 ? "Innovative Online Shopping" : "User Name",
          maxLines: 1,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        leading: CircleAvatar(
          radius: 28,
          backgroundImage: NetworkImage(
              "https://randomuser.me/api/portraits/men/$index.jpg"),
        ),
        subtitle: Text(
          "Last Message or last seen",
          maxLines: 1,
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("10:30 PM"),
            CircleAvatar(
              radius: 10,
              backgroundColor: AppColors.secondary(context),
              child: Text(
                "1",
                style: TextStyle(fontSize: 14),
              ),
            )
          ],
        ),
        onTap: () => index > 5
            ? NavigationUtils.groupChattingPage(context)
            : NavigationUtils.chattingPage(context),
      ),
    );
  }
}
