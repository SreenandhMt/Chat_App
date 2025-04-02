import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:chat_app/core/fonts.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/chat_page/view_models/bloc/chat_bloc.dart';

class ReportUserDialog extends StatelessWidget {
  const ReportUserDialog({
    super.key,
    required this.uid,
    required this.userName,
  });
  final String uid;
  final String userName;

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
            "Report $userName?",
            style: AppFonts.titleFont(context),
          ),
          Text(
            "Are you sure you want to report this user?",
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
                    context.read<ChatBloc>().add(ChatEvent.blockUser(uid: uid));
                    context.pop();
                    context.pop();
                    context.pop();
                  },
                  color: Colors.red,
                  height: 45,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  child: Text("Report"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
