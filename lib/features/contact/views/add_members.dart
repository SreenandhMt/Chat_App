import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:chat_app/components/app_search_bar.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/views/introduction_page.dart';
import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';

import '../../home/view_models/bloc/home_bloc.dart';
import '../view_models/bloc/contact_bloc.dart';

class AddMembersPage extends StatelessWidget {
  const AddMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) =>
        context.read<ContactBloc>().add(ContactEvent.loadContacts()));
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Members"),
        ),
        body: BlocConsumer<ContactBloc, ContactState>(
          listener: (ctx, state) {},
          builder: (ctx, state) {
            final contacts = state.registeredContacts;
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: contacts.length + 1,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Padding(
                          padding: const EdgeInsets.all(20),
                          child: AppSearchBar(),
                        );
                      }
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(contacts[index - 1].imageUrl ?? ""),
                          child: Icon(CupertinoIcons.person),
                        ),
                        title: Text(contacts[index - 1].name),
                        subtitle: Text(contacts[index - 1].phoneNumber),
                        trailing: Checkbox(
                            value: state.selectedContacts
                                .contains(contacts[index - 1].uid),
                            onChanged: (value) {
                              if (state.selectedContacts
                                  .contains(contacts[index - 1].uid)) {
                                log("2");
                                context.read<ContactBloc>().add(
                                    ContactEvent.removeMembersList(
                                        id: contacts[index - 1].uid));
                                return;
                              }
                              context.read<ContactBloc>().add(
                                  ContactEvent.addMembersList(
                                      id: contacts[index - 1].uid));
                            }),
                      );
                    },
                  ),
                ),
                height5,
                AppButton(
                  title: "Add Members",
                  onPressed: () {
                    if (state.alreadyJoinedUsers.isNotEmpty) {
                      context.read<GroupBloc>().add(GroupEvent.addMember(
                          members: state.selectedContacts));
                      context.pop();
                      return;
                    }
                    context.read<GroupBloc>().add(GroupEvent.createGroup(
                        participants: state.selectedContacts));
                    context.read<HomeBloc>().add(HomeEvent.getAllData());
                    context.pop();
                    context.pop();
                  },
                )
              ],
            );
          },
        ));
  }
}
