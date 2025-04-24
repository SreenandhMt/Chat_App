// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/fonts.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/calls_screen/services/agora_service.dart';
import 'package:chat_app/features/calls_screen/view_models/bloc/calling_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error_snackbar.dart';
import '../../auth/models/user_models.dart';

class VoiceCallPage extends StatefulWidget {
  const VoiceCallPage({super.key});

  @override
  State<VoiceCallPage> createState() => _VoiceCallPageState();
}

class _VoiceCallPageState extends State<VoiceCallPage> {
  StreamSubscription<DocumentSnapshot<Map<String, dynamic>>>? callStream;
  ValueNotifier<Duration?> duration = ValueNotifier<Duration?>(null);
  Timer? _timer;
  bool agoraInit = false;
  bool isListening = false;

  @override
  void initState() {
    isListening = false;
    callSteam();
    super.initState();
  }

  void startDurationFunction(Timestamp startTime) {
    _timer?.cancel();

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      duration.value = DateTime.now().difference(startTime.toDate());
    });
  }

  void stopDurationFunction() {
    if (_timer != null) {
      _timer?.cancel();
    }
  }

  void callSteam() {
    final state = context.read<CallingBloc>().state;
    if (state.currentCall != null) {
      isListening = true;
      FirebaseFirestore.instance
          .collection("calls")
          .doc(state.currentCall?.historyId)
          .snapshots()
          .listen((event) {
        if (!event.exists) {
          if (mounted && context.canPop()) {
            isListening = false;
            context.read<CallingBloc>().add(CallingEvent.clearCurrentCall());
            context.pop();
          }
          return;
        }
        context
            .read<CallingBloc>()
            .add(CallingEvent.updateCurrentCall(docs: event));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return BlocConsumer<CallingBloc, CallingState>(listener: (context, state) {
      if (state.errorMsg != null) {
        showExpandableSnackBar(context, state.errorMsg!.message,
            state.errorMsg!.details, state.errorMsg!.code);
        context.read<CallingBloc>().add(CallingEvent.clearErrorMessage());
      }
      if (state.currentCall!.status != "ringing" && _timer == null) {
        startDurationFunction(state.currentCall!.startTime);
      }
      if (!isListening && state.currentCall != null) {
        callSteam();
      }
    }, builder: (context, state) {
      if (state.currentCall == null) {
        return Center(child: CircularProgressIndicator());
      }
      if (!agoraInit && state.currentCall!.isCaller) {
        AgoraService.instance
            .joinVoiceCall(state.currentCall!.token, context)
            .then(
          (value) {
            setState(() {
              agoraInit = true;
            });
          },
        );
        return Center(child: CircularProgressIndicator());
      }
      if (state.currentCall?.callType == "group") {
        final remoteUsers = state.remoteUsers;
        return Scaffold(
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                    child: SafeArea(
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 8,
                        runSpacing: 8,
                        children:
                            List.generate(remoteUsers.length + 1, (index) {
                          if (index == 0) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: remoteUsers.length >= 3
                                    ? (size.width / 2) * 0.95
                                    : double.infinity,
                                height: remoteUsers.length >= 5
                                    ? (size.height / 2) * 0.7
                                    : remoteUsers.length >= 2
                                        ? (size.height / 2) * 0.8
                                        : size.height * 0.85,
                                decoration: BoxDecoration(
                                    color: AppColors.chatColor(
                                  context,
                                  false,
                                )),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                        radius: 40,
                                        backgroundImage: NetworkImage(
                                            FirebaseAuth.instance.currentUser
                                                    ?.photoURL ??
                                                "")),
                                    height10,
                                    Text(
                                      FirebaseAuth.instance.currentUser
                                              ?.displayName ??
                                          "",
                                      style: AppFonts.titleFont(context),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                          final remoteUserId =
                              state.currentCall?.map?["agoraIds"]
                                  [remoteUsers[index - 1].localUid.toString()];
                          UserModels? userModel;
                          final ss = state.currentCall?.groupCallMembers
                              .where((element) => element.uid == remoteUserId);
                          userModel = ss?.first;
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: remoteUsers.length >= 3
                                  ? (size.width / 2) * 0.95
                                  : double.infinity,
                              height: remoteUsers.length >= 5
                                  ? (size.height / 2) * 0.7
                                  : remoteUsers.length >= 2
                                      ? (size.height / 2) * 0.8
                                      : size.height * 0.85,
                              decoration: BoxDecoration(
                                  color: AppColors.chatColor(
                                context,
                                false,
                              )),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      radius: 40,
                                      backgroundImage: NetworkImage(
                                          userModel?.imageUrl ?? "")),
                                  height10,
                                  Text(
                                    userModel?.name ?? "",
                                    style: AppFonts.titleFont(context),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (state.currentCall!.isCaller ||
                      state.currentCall?.status != "ringing")
                    InkWell(
                      onTap: () => context.pop(),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: AppColors.grey(context),
                        child: Icon(
                          Icons.mic,
                          size: 25,
                        ),
                      ),
                    ),
                  if (state.currentCall!.isCaller ||
                      state.currentCall?.status != "ringing")
                    InkWell(
                      onTap: () {
                        AgoraService.instance.leaveChannel(context);
                        if (state.currentCall!.groupId == null) {
                          context.read<CallingBloc>().add(
                              CallingEvent.endNormalCall(
                                  callId: state.currentCall!.callerId));
                        } else {
                          context.read<CallingBloc>().add(
                              CallingEvent.endGroupCall(
                                  callId: state.currentCall!.callerId));
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
                    )
                  else
                    InkWell(
                      onTap: () {
                        context.read<CallingBloc>().add(
                            CallingEvent.pickUpReceiverNormalCall(
                                callId: state.currentCall!.historyId));
                        AgoraService.instance
                            .joinVoiceCall(state.currentCall!.token, context)
                            .then(
                          (value) {
                            setState(() {
                              agoraInit = true;
                            });
                          },
                        );
                      },
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.call_sharp,
                          size: 25,
                        ),
                      ),
                    ),
                  if (state.currentCall!.isCaller ||
                      state.currentCall?.status != "ringing")
                    InkWell(
                      onTap: () => context.pop(),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: AppColors.grey(context),
                        child: Icon(
                          Icons.volume_up_rounded,
                          size: 25,
                        ),
                      ),
                    ),
                ],
              )
            ],
          ),
        );
      }
      return Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Text(
                state.currentCall!.userModels?.name ??
                    state.currentCall!.groupName ??
                    "",
                style: AppFonts.titleFont(context)),
            height5,
            ValueListenableBuilder(
                valueListenable: duration,
                builder: (context, value, child) {
                  return Text(state.currentCall!.status == "ringing"
                      ? "Ringing.."
                      : duration.value == null
                          ? ""
                          : duration.value!.inHours == 0
                              ? "${duration.value!.inMinutes.remainder(60)}:${duration.value!.inSeconds.remainder(60)}"
                              : "${duration.value!.inHours}:${duration.value!.inMinutes.remainder(60)}:${duration.value!.inSeconds.remainder(60)}");
                }),
            height20,
            CircleAvatar(
              backgroundImage: NetworkImage(
                  state.currentCall!.userModels?.imageUrl ??
                      state.currentCall!.groupImage ??
                      ""),
              radius: 50,
            ),
            Spacer(flex: 3),
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (state.currentCall!.isCaller ||
                    state.currentCall?.status != "ringing")
                  InkWell(
                    onTap: () => context.pop(),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: AppColors.grey(context),
                      child: Icon(
                        Icons.mic,
                        size: 25,
                      ),
                    ),
                  ),
                if (state.currentCall!.isCaller ||
                    state.currentCall?.status != "ringing")
                  InkWell(
                    onTap: () {
                      AgoraService.instance.leaveChannel(context);
                      context.read<CallingBloc>().add(
                            CallingEvent.endGroupCall(
                                callId: state.currentCall!.callerId),
                          );
                    },
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.call_end_rounded,
                        size: 25,
                      ),
                    ),
                  )
                else
                  InkWell(
                    onTap: () {
                      context.read<CallingBloc>().add(
                          CallingEvent.pickUpReceiverNormalCall(
                              callId: state.currentCall!.historyId));
                      AgoraService.instance
                          .joinVoiceCall(state.currentCall!.token, context)
                          .then(
                        (value) {
                          setState(() {
                            agoraInit = true;
                          });
                        },
                      );
                    },
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.call_sharp,
                        size: 25,
                      ),
                    ),
                  ),
                if (state.currentCall!.isCaller ||
                    state.currentCall?.status != "ringing")
                  InkWell(
                    onTap: () => context.pop(),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: AppColors.grey(context),
                      child: Icon(
                        Icons.volume_up_rounded,
                        size: 25,
                      ),
                    ),
                  ),
              ],
            ),
            height30,
          ],
        ),
      );
    });
  }

  @override
  void dispose() {
    stopDurationFunction();
    super.dispose();
  }
}
