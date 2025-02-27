import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chats",
          style: GoogleFonts.outfit(fontSize: 25, fontWeight: FontWeight.w700),
        ),
        actions: [
          CircleAvatar(radius: 25),
          width10,
        ],
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 10),
        itemBuilder: (context, index) => ListTile(
          title: Text(
            "User Name",
            maxLines: 1,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
          leading: CircleAvatar(
            radius: 28,
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
          onTap: () => NavigationUtils.chattingPage(context),
        ),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: Divider(
            thickness: 0.1,
            height: 0.1,
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
