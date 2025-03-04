import 'package:chat_app/components/app_search_bar.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/views/introduction_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddMembersPage extends StatelessWidget {
  const AddMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Members"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 9 + 1, //1 for the textfield
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: AppSearchBar(),
                  );
                }
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://randomuser.me/api/portraits/men/$index.jpg"),
                    child: Icon(CupertinoIcons.person),
                  ),
                  title: Text("Name"),
                  subtitle: Text("Email"),
                  trailing: Checkbox(value: false, onChanged: (value) {}),
                );
              },
            ),
          ),
          height5,
          AppButton(title: "Add Members")
        ],
      ),
    );
  }
}
