import 'dart:developer';

import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/chat_page/models/message_model.dart';

import '../../features/chat_page/view_models/bloc/chat_bloc.dart';

class PollWidget extends StatefulWidget {
  const PollWidget({
    super.key,
    required this.isSender,
    this.isGroup = false,
    required this.messageModel,
  });
  final bool isSender;
  final bool isGroup;
  final MessageModel messageModel;
  @override
  State<PollWidget> createState() => _PollWidgetState();
}

class _PollWidgetState extends State<PollWidget> {
  @override
  Widget build(BuildContext context) {
    log(widget.isGroup.toString());
    final size = MediaQuery.sizeOf(context);
    final Color? color = widget.isSender ? Colors.white : null;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.chatColor(context, widget.isSender),
        borderRadius: BorderRadius.circular(17),
      ),
      constraints: BoxConstraints(
        minHeight: 65,
        maxWidth: size.width * 0.8,
        minWidth: size.width * 0.3,
      ),
      margin: widget.isGroup ? null : EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 15),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text(
                    widget.messageModel.message ?? "",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: color),
                  ),
                ),
                if (widget.messageModel.options != null &&
                    (context.read<GroupBloc>().state as GroupData).groupData !=
                        null)
                  ...widget.messageModel.options!.keys.map((value) {
                    final membersLength = widget.isGroup
                        ? (context.read<GroupBloc>().state as GroupData)
                            .groupData!
                            .participants
                            .length
                        : context
                            .read<ChatBloc>()
                            .state
                            .chatData!
                            .participants
                            .length;
                    log(membersLength.toString());
                    final progress =
                        (widget.messageModel.options![value]! / membersLength) *
                            1;
                    return PollItem(
                      option: value.toString(),
                      isGroup: widget.isGroup,
                      messageId: widget.messageModel.id,
                      votes: widget.messageModel.votes ?? {},
                      progress: progress,
                      isSender: widget.isSender,
                    );
                  }),
                height10,
                Divider(),
                height10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "View All",
                      style: TextStyle(
                          color: widget.isSender
                              ? color
                              : AppColors.secondary(context),
                          fontSize: 17),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 5,
              children: [
                if (widget.isSender)
                  Icon(
                    Icons.check,
                    size: 13,
                    color: Colors.blue,
                  ),
                Text(
                  widget.messageModel.time,
                  style: TextStyle(fontSize: 12, color: color),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PollItem extends StatelessWidget {
  const PollItem({
    super.key,
    required this.isSender,
    required this.option,
    required this.progress,
    required this.votes,
    required this.messageId,
    required this.isGroup,
  });
  final bool isSender;
  final String option;
  final double progress;
  final Map<String, dynamic> votes;
  final String messageId;
  final bool isGroup;

  @override
  Widget build(BuildContext context) {
    final Color? color = isSender ? Colors.white : null;
    return LimitedBox(
      maxWidth: double.infinity,
      maxHeight: 55,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CupertinoRadio(
              groupValue: (votes[option] is List)
                  ? (votes[option] as List)
                      .contains(FirebaseAuth.instance.currentUser!.uid)
                  : false,
              value: true,
              onChanged: (value) {
                if (isGroup) {
                  context.read<GroupBloc>().add(GroupEvent.votePoll(
                      votes: votes, option: option, messageId: messageId));
                } else {
                  context.read<ChatBloc>().add(ChatEvent.votePoll(
                      votes: votes, option: option, messageId: messageId));
                }
              }),
          width10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          option,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: color),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      width5,
                      Text(
                        (votes[option] is List)
                            ? votes[option].length.toString()
                            : "",
                        style: TextStyle(
                          color: color,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                LinearProgressIndicator(
                  color: isSender
                      ? AppColors.secondary(context)
                      : AppColors.primary(context),
                  borderRadius: BorderRadius.circular(10),
                  minHeight: 10,
                  value: progress,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
