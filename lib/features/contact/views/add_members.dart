import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:chat_app/components/app_search_bar.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/views/introduction_page.dart';
import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';

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
                                context.read<ContactBloc>().add(
                                    ContactEvent.removeMembersList(
                                        id: contacts[index - 1].uid,
                                        model: contacts[index - 1]));
                                return;
                              }
                              context.read<ContactBloc>().add(
                                  ContactEvent.addMembersList(
                                      id: contacts[index - 1].uid,
                                      model: contacts[index - 1]));
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
                          members: state.selectedContactModels));
                      context.pop();
                      return;
                    }
                    if (state.selectedContacts.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Select any user"),
                        closeIconColor: Colors.black,
                        showCloseIcon: true,
                        margin: EdgeInsets.all(10),
                        behavior: SnackBarBehavior.floating,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                      ));
                      return;
                    }
                    context.read<GroupBloc>().add(GroupEvent.createGroup(
                        participants: state.selectedContacts));
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
