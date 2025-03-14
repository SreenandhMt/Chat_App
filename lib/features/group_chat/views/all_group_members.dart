import 'package:chat_app/components/app_search_bar.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';
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
          groupData: (groupData, groupMembers, messageData) => ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: AppSearchBar(),
              ),
              ...List.generate(
                groupData!.participants.length,
                (index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        backgroundImage: NetworkImage(
                            groupMembers[groupData.participants[index]]!
                                    .imageUrl ??
                                ""),
                      ),
                      title: Text(
                          groupMembers[groupData.participants[index]]!.name),
                      subtitle: Text(
                          groupMembers[groupData.participants[index]]!
                              .phoneNumber),
                      trailing: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.grey(context)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text("Admin")),
                    ),
                  );
                },
              )
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
