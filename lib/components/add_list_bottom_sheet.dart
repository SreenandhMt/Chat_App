import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_ce_flutter/adapters.dart';

import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/fonts.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/views/introduction_page.dart';

class AddToList extends StatefulWidget {
  const AddToList({
    super.key,
    required this.chatId,
  });
  final String chatId;

  @override
  State<AddToList> createState() => AddToListState();
}

class AddToListState extends State<AddToList> {
  final box = Hive.box("category");
  String selectedList = "";
  List<String> categoryList = [];

  @override
  void initState() {
    getCurrentList();
    super.initState();
  }

  void getCurrentList() {
    List<String>? list = box.get("categoryList");
    if (list == null) {
      box.put("categoryList", ["Community", "Event", "News"]);
      list = ["Community", "Event", "News"];
    }
    for (var key in list) {
      List<dynamic>? ids = box.get(key);
      if (ids != null && ids.contains(widget.chatId)) {
        selectedList = key;
      }
    }
    categoryList = list;
    setState(() {});
  }

  void selectValue(String value) {
    if (value.isEmpty) return;
    if (selectedList.isNotEmpty) {
      List<dynamic>? values = box.get(selectedList);
      if (values != null) {
        values.remove(widget.chatId);
        box.put(selectedList, values);
      }
    }
    selectedList = value;
    final List<dynamic>? list = box.get(selectedList);
    if (list != null) {
      box.put(selectedList, [...list, widget.chatId]);
    } else {
      box.put(selectedList, [widget.chatId]);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        height15,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text("Choose List", style: AppFonts.titleFont(context)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: ListTile(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => Dialog(
                  child: CreateListDialog(updateUi: () => getCurrentList()),
                ),
              );
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            leading: Icon(Icons.add, color: AppColors.primary(context)),
            title: Text(
              "New List",
              style: AppFonts.subtitleStyle(context).copyWith(
                color: AppColors.primary(context),
              ),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                categoryList.length,
                (index) {
                  return RadioListTile(
                      selected: selectedList == categoryList[index],
                      value: categoryList[index],
                      groupValue: selectedList,
                      title: Text(categoryList[index]),
                      onChanged: (value) {
                        log(value.toString());
                        if (value == null) {
                          return;
                        }
                        selectValue(value);
                      });
                },
              ),
            ),
          ),
        ),
        height15,
        AppButton(
          title: "Done",
          onPressed: () {
            context.pop();
          },
        ),
        height5,
      ],
    );
  }
}

class CreateListDialog extends StatefulWidget {
  const CreateListDialog({
    super.key,
    required this.updateUi,
  });
  final void Function() updateUi;

  @override
  State<CreateListDialog> createState() => CreateListDialogState();
}

class CreateListDialogState extends State<CreateListDialog> {
  final TextEditingController _name = TextEditingController();
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("Create New List", style: AppFonts.titleFont(context)),
            ),
            height10,
            Row(
              children: [
                width10,
                Text(
                  "List name",
                  style: AppFonts.subtitleStyle(context).copyWith(fontSize: 14),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autofocus: true,
                controller: _name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter list name";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Example: Friend, family",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            height20,
            AppButton(
              title: "Create",
              onPressed: () {
                if (!_key.currentState!.validate()) return;
                final box = Hive.box("category");
                List<String>? list = box.get("categoryList");
                if (list == null) return;
                box.put("categoryList", [...list, _name.text.trim()]);
                context.pop();
                return widget.updateUi();
              },
            ),
            height10,
          ],
        ),
      ),
    );
  }
}
