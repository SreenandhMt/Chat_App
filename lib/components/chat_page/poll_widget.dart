import 'package:chat_app/components/chat_page/profile_image_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/chat_page/models/message_model.dart';
import 'package:chat_app/features/home/models/chat_model.dart';

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
  final List<String> imageUrls = [
    'https://randomuser.me/api/portraits/men/1.jpg',
    'https://randomuser.me/api/portraits/men/2.jpg',
    'https://randomuser.me/api/portraits/women/1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
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
                    widget.messageModel.message!,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                ),
                ...widget.messageModel.options!.keys.map(
                  (value) => PollItem(
                    option: value.toString(),
                    messageId: widget.messageModel.id,
                    votes: widget.messageModel.votes!,
                    progress: (widget.messageModel.options![value]! /
                            (context.read<ChatBloc>().state.chatData!['chat']
                                    as ChatModel)
                                .participants
                                .length) *
                        1,
                    imageUrls: imageUrls,
                    isSender: widget.isSender,
                  ),
                ),
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
                              ? null
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
                  style: TextStyle(fontSize: 12),
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
    required this.imageUrls,
    required this.isSender,
    required this.option,
    required this.progress,
    required this.votes,
    required this.messageId,
  });
  final List<String> imageUrls;
  final bool isSender;
  final String option;
  final double progress;
  final Map<String, dynamic> votes;
  final String messageId;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxWidth: double.infinity,
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
                context.read<ChatBloc>().add(ChatEvent.votePoll(
                    votes: votes, option: option, messageId: messageId));
              }),
          width10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        option,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    LimitedBox(
                      maxHeight: 50,
                      maxWidth: 70,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: List.generate(
                            (votes[option] is List) ? votes[option].length : 0,
                            (index) {
                          return Positioned(
                            right: index * 17,
                            child: UserProfileScreen(
                              uid: votes[option][index],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    width5,
                    Text((votes[option] is List)
                        ? votes[option].length.toString()
                        : ""),
                  ],
                ),
                LinearProgressIndicator(
                  color: isSender
                      ? AppColors.backgroundColor(context)
                      : AppColors.secondary(context),
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
