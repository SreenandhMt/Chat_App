import 'package:chat_app/components/app_search_bar.dart';
import 'package:chat_app/components/home/user_widget.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

final List<String> category = [
  "All",
  "Personal",
  "Group",
  "Community",
  "Event",
  "News",
  "Other"
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleData.chatsText.getString(context),
        ),
        actions: [
          PopupMenuButton(
            position: PopupMenuPosition.under,
            splashRadius: 20,
            shape: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10)),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Row(
                  children: [
                    width10,
                    Text(LocaleData.newGroupText.getString(context)),
                    width50,
                    width20,
                  ],
                ),
                onTap: () => NavigationUtils.createGroupPage(context),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    width10,
                    Text(LocaleData.newContactText.getString(context)),
                    width50,
                    width20,
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    width10,
                    Text(LocaleData.inviteFriendsText.getString(context)),
                    width50,
                    width20,
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    width10,
                    Text(LocaleData.settingsText.getString(context)),
                    width50,
                    width20,
                  ],
                ),
                onTap: () => NavigationUtils.settingsPage(context),
              ),
            ],
            child: Icon(Icons.more_vert),
          ),
          width10,
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: AppSearchBar(),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: List.generate(
                category.length,
                (index) => Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    color: index == 0
                        ? AppColors.secondary(context)
                        : AppColors.grey(context),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Text(category[index]),
                ),
              ),
            ),
          ),
          ...List.generate(
            10,
            (index) => UserWidget(index: index),
          ),
        ],
      ),
    );
  }
}
