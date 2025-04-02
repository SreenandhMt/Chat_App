import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import 'package:chat_app/localization/locals.dart';

import '../core/colors.dart';
import '../features/home/models/chat_model.dart';
import 'home/user_widget.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
    this.controller,
    this.submitted,
  });
  final TextEditingController? controller;
  final Function(String)? submitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onFieldSubmitted: submitted,
      decoration: InputDecoration(
        hintText: LocaleData.searchText.getString(context),
        prefixIcon: Icon(Icons.search),
        fillColor: AppColors.grey(context),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          gapPadding: 5.0,
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
    this.controller,
    required this.searchController,
    this.submitted,
    required this.searchFilteredChats,
  });
  final TextEditingController? controller;
  final SearchController searchController;
  final Function(String)? submitted;
  final List<ChatModel> searchFilteredChats;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onFieldSubmitted: submitted,
      onTap: () => _openFullScreenSearch(context),
      decoration: InputDecoration(
        hintText: LocaleData.searchText.getString(context),
        prefixIcon: Icon(Icons.search),
        fillColor: AppColors.grey(context),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          gapPadding: 5.0,
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  void _openFullScreenSearch(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => _FullScreenSearchView(
          controller: controller!,
          submitted: submitted,
          searchFilteredChats: searchFilteredChats),
    );
  }
}

// Full-Screen Search Dialog with the modified TextFormField and suggestions
class _FullScreenSearchView extends StatefulWidget {
  final TextEditingController controller;
  final Function(String)? submitted;
  final List<ChatModel> searchFilteredChats;

  const _FullScreenSearchView({
    required this.controller,
    this.submitted,
    required this.searchFilteredChats,
  });

  @override
  _FullScreenSearchViewState createState() => _FullScreenSearchViewState();
}

class _FullScreenSearchViewState extends State<_FullScreenSearchView> {
  List<ChatModel> filteredChats = [];
  String query = "";

  @override
  void initState() {
    super.initState();
    filteredChats = widget.searchFilteredChats;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 15, bottom: 10),
              child: Row(
                spacing: 5,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: widget.controller,
                      onChanged: (value) {
                        setState(() {
                          query = value;
                          filteredChats = widget.searchFilteredChats
                              .where((chat) => !chat.isGroup
                                  ? chat.userModel!.name
                                      .toLowerCase()
                                      .contains(query.toLowerCase())
                                  : chat.groupName!
                                      .toLowerCase()
                                      .contains(query.toLowerCase()))
                              .toList();
                        });
                      },
                      onFieldSubmitted: widget.submitted,
                      autofocus: true,
                      decoration: InputDecoration(
                        hintText: "Search...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredChats.length,
                itemBuilder: (context, index) {
                  return UserWidget(
                    index: index,
                    userModel: filteredChats[index].userModel,
                    chatModel: filteredChats[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
