import 'package:chat_app/components/app_search_bar.dart';
import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';
import 'package:chat_app/features/group_chat/views/group_info_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllGroupMembers extends StatelessWidget {
  const AllGroupMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Members'),
      ),
      body: BlocBuilder<GroupBloc, GroupState>(builder: (context, state) {
        return state.when(
          groupData: (groupData,
                  groupMembers,
                  allGroupMembers,
                  blockedGroupMembers,
                  messageData,
                  wallpaperIndex,
                  messages,
                  isLoading,
                  inputLoading,
                  isError) =>
              ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: AppSearchBar(),
              ),
              if (groupData != null)
                ...List.generate(
                    groupData.participants.length + 1,
                    (index) => GroupUserWidget(
                        groupData: groupData,
                        index: index,
                        groupMembers: groupMembers!))
            ],
          ),
          createGroupData: (groupName,
                  groupDescription,
                  groupImagePath,
                  memberCanEdit,
                  memberCanAddMember,
                  memberCanMessage,
                  contacts,
                  selectedContacts) =>
              Center(
            child: CircularProgressIndicator(),
          ),
        );
      }),
    );
  }
}
