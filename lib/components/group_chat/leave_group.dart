import 'package:chat_app/core/fonts.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/view_models/bloc/home_bloc.dart';

class LeaveGroupDialog extends StatelessWidget {
  const LeaveGroupDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          height10,
          Icon(Icons.logout, size: 50, color: Colors.red),
          height10,
          Text(
            "Leave this group?",
            style: AppFonts.titleFont(context),
          ),
          Text(
            "Are you sure you want to leave this group?\nYou wo't receive any more messages form this chat.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
          height15,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: MaterialButton(
                  onPressed: () {
                    context.pop();
                  },
                  height: 45,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Text("Cancel"),
                ),
              ),
              width10,
              Expanded(
                flex: 1,
                child: MaterialButton(
                  onPressed: () {
                    context.read<GroupBloc>().add(GroupEvent.exitGroup());
                    context.read<HomeBloc>().add(HomeEvent.getAllData());
                    context.pop();
                    context.pop();
                    context.pop();
                  },
                  color: Colors.red,
                  height: 45,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  child: Text("Leave"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
