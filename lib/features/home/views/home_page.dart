import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat_app/components/app_search_bar.dart';
import 'package:chat_app/components/home/user_widget.dart';
import 'package:chat_app/core/assets.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/error_snackbar.dart';
import 'package:chat_app/core/fonts.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/chat_page/view_models/bloc/chat_bloc.dart';
import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';
import 'package:chat_app/features/home/models/chat_model.dart';
import 'package:chat_app/features/home/view_models/bloc/home_bloc.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_localization/flutter_localization.dart';

final List<String> category = [
  "All",
  "Personal",
  "Group",
];
TextEditingController _controller = TextEditingController();
SearchController _searchController = SearchController();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(HomeEvent.getAllData());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleData.chatsText.getString(
            context,
          ),
          style: AppFonts.appBarStyle(context),
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
                onTap: () {
                  FlutterContacts.openExternalInsert();
                },
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
                onTap: () => NavigationUtils.inviteFriendsPage(context),
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
      body: BlocConsumer<HomeBloc, HomeState>(listener: (context, state) {
        if (state.error != null) {
          showExpandableSnackBar(context, state.error!.message,
              "Error Home Page: ${state.error!.details}", state.error!.code);
          context.read<HomeBloc>().add(HomeEvent.clearError());
        }
        if (state.chatsStream != null) {
          state.chatsStream!.listen((snapshot) {
            if (snapshot.docs.isNotEmpty) {
              context
                  .read<HomeBloc>()
                  .add(HomeEvent.loadUserData(docs: snapshot.docs));
            }
          });
        } else {
          log("isNotEmpty");
        }
      }, builder: (context, state) {
        return ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: HomeSearchBar(
                searchFilteredChats: state.chatsModels,
                controller: _controller,
                searchController: _searchController,
                submitted: (p0) {},
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: List.generate(
                  state.categoryList.length + category.length,
                  (index) {
                    final String categoryName = (index >= category.length)
                        ? state.categoryList[index - (category.length)]
                        : category[index];
                    return InkWell(
                      onTap: () {
                        context.read<HomeBloc>().add(
                            HomeEvent.filterCategoryUsers(
                                category: categoryName));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          color: state.selectedCategory == categoryName
                              ? AppColors.secondary(context)
                              : AppColors.grey(context),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Text(
                          categoryName,
                          style: AppFonts.subtitleStyle(context),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            if (!state.isLoading && state.chatsModels.isEmpty)
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.chatEmpty(context),
                    ),
                    Text(
                      "No Conversations Yet",
                      style: AppFonts.titleFont(context).copyWith(fontSize: 17),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        "Start a new chat or invite others to join the conversation.",
                        textAlign: TextAlign.center,
                        style: AppFonts.subtitleStyle(context)
                            .copyWith(fontSize: 13),
                      ),
                    ),
                  ],
                ),
              )
            else if (!state.isLoading &&
                state.filteredChats.isEmpty &&
                state.selectedCategory != "All")
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.chatEmpty(context),
                    ),
                    Text(
                      "No Chat in ${state.selectedCategory}",
                      style: AppFonts.titleFont(context).copyWith(fontSize: 17),
                    ),
                    TextButton(
                      onPressed: () => context
                          .read<HomeBloc>()
                          .add(HomeEvent.filterCategoryUsers(category: "All")),
                      child: Text(
                        "Show All Chats",
                        style: AppFonts.subtitleStyle(context)
                            .copyWith(fontSize: 13),
                      ),
                    ),
                  ],
                ),
              )
            else
              Column(
                children: List.generate(
                  state.filteredChats.length,
                  (index) {
                    final chat = state.filteredChats[index];
                    final user = state.filteredChats[index].userModel;
                    return UserWidget(
                      onTap: () {
                        if (chat.isGroup) {
                          context.read<GroupBloc>().add(GroupEvent.loadData(
                              chat: state.filteredChats[index]));
                          NavigationUtils.groupChattingPage(context);
                          return;
                        }
                        context.read<ChatBloc>().add(
                            ChatEvent.getMessages(state.filteredChats[index]));
                        NavigationUtils.chattingPage(context);
                      },
                      index: index,
                      chatModel: chat,
                      userModel: user,
                    );
                  },
                ),
              )
          ],
        );
      }),
    );
  }
}
