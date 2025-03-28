import 'dart:developer';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:chat_app/components/calling_page/video_call_widget.dart';
import 'package:chat_app/components/calling_page/voice_call_widget.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/calls_screen/models/remote_user_model.dart';
import 'package:chat_app/features/calls_screen/services/agora_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../core/fonts.dart';
import '../../../core/size.dart';
import '../models/call_model.dart';
import '../view_models/bloc/calling_bloc.dart';

class VideoCallPage extends StatefulWidget {
  const VideoCallPage({super.key});

  @override
  State<VideoCallPage> createState() => _VideoCallPageState();
}

class _VideoCallPageState extends State<VideoCallPage> {
  bool isStartInit = false;
  bool cameraMute = false;
  bool audioMute = false;
  bool streamInit = false;

  @override
  void initState() {
    super.initState();
  }

  Future<void> initAgora(String token) async {
    isStartInit = true;
    AgoraService.instance.joinVideoCall(token, context);
  }

  @override
  void dispose() {
    super.dispose();
    _dispose();
  }

  Future<void> _dispose() async {}

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return BlocConsumer<CallingBloc, CallingState>(
      listener: (context, state) {
        if (state.currentCall != null && !streamInit) {
          FirebaseFirestore.instance
              .collection("calls")
              .doc(state.currentCall?.historyId)
              .snapshots()
              .listen(
            (event) {
              if (!event.exists) {
                // doc is deleted
                //call ending function on remote user
                if (mounted && Navigator.canPop(context)) {
                  context.pop();
                }
                return;
              }
              context
                  .read<CallingBloc>()
                  .add(CallingEvent.updateCurrentCall(docs: event));
            },
          );
          streamInit = true;
        }
      },
      builder: (context, state) {
        if (state.currentCall == null) {
          return Center(child: CircularProgressIndicator());
        }
        if (!state.currentCall!.isCaller &&
            state.currentCall!.status == "ringing") {
          return CallRinging(callModel: state.currentCall!);
        } else {
          if (state.localUserJoined) {
            initAgora(state.currentCall!.token);
          }
          if (AgoraService.engine == null) {
            return Center(
                child: CircularProgressIndicator(
              color: Colors.red,
            ));
          }
          final remoteUsers = state.remoteUsers;
          return Scaffold(
            body: Stack(
              children: [
                //* Group Call
                if (remoteUsers.isNotEmpty)
                  Positioned.fill(
                    child: SafeArea(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 5, right: 5, top: 10),
                        child: SingleChildScrollView(
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 8,
                            runSpacing: 8,
                            children: List.generate(
                                remoteUsers.length >= 2
                                    ? remoteUsers.length + 1
                                    : remoteUsers.length,
                                (index) => remoteUsers.length >= 2 && index == 0
                                    ? cameraMute
                                        ? VoiceCallWidget(
                                            width: (size.width / 2) * 0.95,
                                            height: remoteUsers.length >= 5
                                                ? (size.height / 2) * 0.7
                                                : (size.height / 2) * 0.8,
                                            imageUrl: FirebaseAuth.instance
                                                    .currentUser!.photoURL ??
                                                "",
                                            name: FirebaseAuth.instance
                                                    .currentUser!.displayName ??
                                                "")
                                        : VideoCallWidget(
                                            width: (size.width / 2) * 0.95,
                                            height: remoteUsers.length >= 5
                                                ? (size.height / 2) * 0.7
                                                : (size.height / 2) * 0.8,
                                            rtcEngine: AgoraService.engine!)
                                    : remoteUsers[remoteUsers.length <= 2
                                                ? index
                                                : index - 1]
                                            .isVideoMuted
                                        ? Builder(builder: (context) {
                                            final remoteUserId = state
                                                .currentCall
                                                ?.map?["agoraIds"][remoteUsers[
                                                    remoteUsers.length <= 2
                                                        ? index
                                                        : index - 1]
                                                .localUid
                                                .toString()];
                                            UserModels? userModel;
                                            if (state.currentCall?.callType ==
                                                "group") {
                                              final ss = state
                                                  .currentCall?.groupCallMembers
                                                  .where((element) =>
                                                      element.uid ==
                                                      remoteUserId);
                                              userModel = ss?.first;
                                            } else {
                                              userModel =
                                                  state.currentCall!.userModels;
                                            }

                                            return ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Container(
                                                width: remoteUsers.length >= 2
                                                    ? (size.width / 2) * 0.95
                                                    : double.infinity,
                                                height: remoteUsers.length >= 5
                                                    ? (size.height / 2) * 0.7
                                                    : remoteUsers.length >= 2
                                                        ? (size.height / 2) *
                                                            0.8
                                                        : size.height * 0.95,
                                                decoration: BoxDecoration(
                                                    color: AppColors.grey(
                                                        context)),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CircleAvatar(
                                                        radius: 40,
                                                        backgroundImage:
                                                            NetworkImage(userModel
                                                                    ?.imageUrl ??
                                                                "")),
                                                    height10,
                                                    Text(
                                                      userModel?.name ?? "",
                                                      style: AppFonts.titleFont(
                                                          context),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            );
                                          })
                                        : VideoCallWidget(
                                            width: remoteUsers.length >= 2
                                                ? (size.width / 2) * 0.95
                                                : double.infinity,
                                            height: remoteUsers.length >= 5
                                                ? (size.height / 2) * 0.7
                                                : remoteUsers.length >= 2
                                                    ? (size.height / 2) * 0.8
                                                    : size.height * 0.95,
                                            rtcEngine: AgoraService.engine!,
                                            isLocalUser: false,
                                            uid: remoteUsers[
                                                    remoteUsers.length <= 2
                                                        ? index
                                                        : index - 1]
                                                .uid,
                                          )),
                          ),
                        ),
                      ),
                    ),
                  )
                else
                  !cameraMute
                      ? Positioned.fill(
                          child: SafeArea(
                            child: VideoCallWidget(
                              width: size.width * 0.4,
                              height: size.width * 0.55,
                              rtcEngine: AgoraService.engine,
                            ),
                          ),
                        )
                      : Positioned.fill(
                          child: VoiceCallWidget(
                            width: double.infinity,
                            height: size.height * 0.95,
                            name: FirebaseAuth
                                    .instance.currentUser!.displayName ??
                                "",
                            imageUrl:
                                FirebaseAuth.instance.currentUser!.photoURL ??
                                    "",
                          ),
                        ),
                if (remoteUsers.isNotEmpty && remoteUsers.length <= 2)
                  Positioned(
                    bottom: 100,
                    right: 10,
                    child: cameraMute
                        ? VoiceCallWidget(
                            width: size.width * 0.4,
                            height: size.width * 0.55,
                            name: FirebaseAuth
                                    .instance.currentUser!.displayName ??
                                "",
                            imageUrl:
                                FirebaseAuth.instance.currentUser!.photoURL ??
                                    "")
                        : VideoCallWidget(
                            width: size.width * 0.4,
                            height: size.width * 0.55,
                            rtcEngine: AgoraService.engine,
                          ),
                  ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          audioMute = !audioMute;
                          AgoraService.engine?.muteLocalAudioStream(audioMute);
                          setState(() {});
                        },
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.grey,
                          child: Icon(
                            audioMute ? Icons.mic_off : Icons.mic,
                            size: 25,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (state.currentCall?.callType == "group") {
                            if (remoteUsers.isNotEmpty) {
                              context.pop();
                              //TODO End the engine
                              return;
                            }
                            context.read<CallingBloc>().add(
                                  CallingEvent.endGroupCall(
                                    callId: state.currentCall!.historyId,
                                  ),
                                );
                          } else {
                            context.read<CallingBloc>().add(
                                  CallingEvent.endNormalCall(
                                    callId: state.currentCall!.historyId,
                                  ),
                                );
                          }
                        },
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.call_end_rounded,
                            size: 25,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          cameraMute = !cameraMute;
                          AgoraService.engine?.muteLocalVideoStream(cameraMute);
                          setState(() {});
                        },
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.camera_alt_rounded,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }
      },
    );
  }
}

class CallRinging extends StatefulWidget {
  const CallRinging({
    super.key,
    required this.callModel,
  });
  final CallModel callModel;

  @override
  State<CallRinging> createState() => CallRiggingState();
}

class CallRiggingState extends State<CallRinging> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Text(
              widget.callModel.userModels?.name ??
                  widget.callModel.groupName ??
                  "",
              style: AppFonts.titleFont(context)),
          height20,
          CircleAvatar(
            backgroundImage: NetworkImage(
              widget.callModel.userModels?.imageUrl ??
                  widget.callModel.groupImage ??
                  "",
            ),
            radius: 50,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  context.read<CallingBloc>().add(
                        CallingEvent.pickUpReceiverNormalCall(
                          callId: widget.callModel.historyId,
                        ),
                      );
                },
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.call_end_rounded,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
          height25,
        ],
      ),
    );
  }
}
