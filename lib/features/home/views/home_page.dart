import 'package:chat_app/components/app_search_bar.dart';
import 'package:chat_app/components/home/user_widget.dart';
import 'package:chat_app/core/colors.dart';
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
      body: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            return ListView(
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
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          color: index == 0
                              ? AppColors.secondary(context)
                              : AppColors.grey(context),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Text(
                          category[index],
                          style: AppFonts.subtitleStyle(context),
                        ),
                      ),
                    ),
                  ),
                ),
                StreamBuilder(
                  stream: state.chatsStream,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return SizedBox();
                    }
                    if (snapshot.data!.docs.isEmpty) {
                      return Center(
                        child: Text("No Chats Found"),
                      );
                    }
                    context
                        .read<HomeBloc>()
                        .add(HomeEvent.loadUserData(docs: snapshot.data!.docs));
                    return Column(
                      children: List.generate(
                        state.chatsModels.length,
                        (index) {
                          final chat =
                              state.chatsModels[index]["chat"] as ChatModel;
                          final user =
                              state.chatsModels[index]["user"] as UserModels?;
                          return UserWidget(
                            onTap: () {
                              if (chat.isGroup) {
                                context.read<GroupBloc>().add(
                                    GroupEvent.loadData(
                                        chat: state.chatsModels[index]));
                                NavigationUtils.groupChattingPage(context);
                                return;
                              }
                              context.read<ChatBloc>().add(
                                  ChatEvent.getMessages(
                                      state.chatsModels[index]));
                              NavigationUtils.chattingPage(context);
                            },
                            index: index,
                            chatModel: chat,
                            userModel: user,
                          );
                        },
                      ),
                    );
                  },
                )
              ],
            );
          }),
    );
  }
}
