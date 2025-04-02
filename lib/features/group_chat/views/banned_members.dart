import 'package:chat_app/components/app_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/bloc/group_bloc.dart';

class BannedMembers extends StatelessWidget {
  const BannedMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupBloc, GroupState>(
      builder: (context, state) {
        if (state is GroupData) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Banned Members'),
            ),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: AppSearchBar(),
                ),
                if (state.blockedGroupMembers != null)
                  ...List.generate(
                    state.groupData!.blockedGroupMembers.length,
                    (index) {
                      final member = state.blockedGroupMembers![
                          state.groupData!.blockedGroupMembers[index]];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 3),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            backgroundImage:
                                NetworkImage(member?.imageUrl ?? ""),
                          ),
                          title: Text(member?.name ?? ""),
                          trailing: Icon(Icons.close),
                        ),
                      );
                    },
                  )
              ],
            ),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
