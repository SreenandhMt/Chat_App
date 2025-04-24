import 'dart:async';

import 'package:chat_app/core/colors.dart';
import 'package:chat_app/features/calls_screen/models/call_model.dart';
import 'package:chat_app/features/calls_screen/services/agora_service.dart';
import 'package:chat_app/features/calls_screen/services/calling_service.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/fonts.dart';
import '../../core/size.dart';
import '../calls_screen/view_models/bloc/calling_bloc.dart';

class MainPageConfiguration extends StatefulWidget {
  const MainPageConfiguration({
    super.key,
    required this.navigationShell,
  });
  final StatefulNavigationShell navigationShell;

  @override
  State<MainPageConfiguration> createState() => _MainPageConfigurationState();
}

class _MainPageConfigurationState extends State<MainPageConfiguration> {
  bool isRinging = false;
  CallModel? callModel;
  ValueNotifier<Duration?> duration = ValueNotifier<Duration?>(null);
  Timer? _timer;

  void startDurationFunction(Timestamp startTime) {
    _timer?.cancel();

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        _timer = null;
        return;
      }
      duration.value = DateTime.now().difference(startTime.toDate());
    });
  }

  void stopDurationFunction() {
    if (_timer == null) return;
    _timer?.cancel();
    _timer = null;
  }

  @override
  void initState() {
    FirebaseFirestore.instance
        .collection("calls")
        .where("status", isEqualTo: "ringing")
        .where("callerId", isNotEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .snapshots()
        .listen((event) async {
      if (event.docs.isNotEmpty) {
        callModel = await CallingService.convertCallModel(
            callData: event.docs.first.data());
        setState(() {
          isRinging = true;
        });
      }
    });
    AgoraService.instance.initialize(context);
    super.initState();
  }

  @override
  void dispose() {
    stopDurationFunction();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final activeCall = context.watch<CallingBloc>().state.currentCall;
    if (activeCall != null &&
        _timer == null &&
        activeCall.status != "ringing") {
      startDurationFunction(activeCall.startTime);
    } else if (activeCall == null && _timer != null) {
      stopDurationFunction();
    }
    return Scaffold(
      appBar: activeCall == null
          ? null
          : PreferredSize(
              preferredSize: Size(double.infinity, 55),
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.paddingOf(context).top, left: 5, right: 5),
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    color: AppColors.themeColor(context),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          activeCall.userModels?.imageUrl ??
                              activeCall.groupImage ??
                              ""),
                    ),
                    width10,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            activeCall.userModels?.name ??
                                activeCall.groupName ??
                                "",
                            style: AppFonts.subtitleStyle(context),
                          ),
                          ValueListenableBuilder(
                              valueListenable: duration,
                              builder: (context, _, __) {
                                return Text(activeCall.status == "ringing"
                                    ? "Ringing.."
                                    : duration.value == null
                                        ? ""
                                        : duration.value!.inHours == 0
                                            ? "${duration.value!.inMinutes.remainder(60)}:${duration.value!.inSeconds.remainder(60)}"
                                            : "${duration.value!.inHours}:${duration.value!.inMinutes.remainder(60)}:${duration.value!.inSeconds.remainder(60)}");
                              })
                        ],
                      ),
                    ),
                    Text(
                      activeCall.isVideoCall ? "Video Call" : "Voice Call",
                      style: AppFonts.buttonStyle(context),
                    ),
                    IconButton(
                        onPressed: () {
                          AgoraService.instance.leaveChannel(context);
                          if (activeCall.callType == "group") {
                            if (context
                                .read<CallingBloc>()
                                .state
                                .remoteUsers
                                .isNotEmpty) {
                              return;
                            }
                            context.read<CallingBloc>().add(
                                CallingEvent.endGroupCall(
                                    callId: activeCall.historyId));
                          } else {
                            context.read<CallingBloc>().add(
                                CallingEvent.endNormalCall(
                                    callId: activeCall.historyId));
                          }
                        },
                        icon: Icon(Icons.close)),
                    IconButton(
                        onPressed: () {
                          if (activeCall.isVideoCall) {
                            NavigationUtils.videoCallPage(context);
                          } else {
                            NavigationUtils.voiceCallPage(context);
                          }
                        },
                        icon: Icon(Icons.open_in_full_rounded))
                  ],
                ),
              )),
      body: Stack(
        children: [
          widget.navigationShell,
          if (isRinging) //calling widget
            Positioned(
                top: MediaQuery.paddingOf(context).top * 0.8,
                right: 10,
                left: 10,
                child: Card(
                  child: GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              callModel?.userModels?.name ??
                                  callModel?.groupName ??
                                  "",
                              style: AppFonts.titleFont(context),
                            ),
                            subtitle: Row(
                              spacing: 10,
                              children: [
                                Icon(
                                  Icons.call,
                                  size: 15,
                                ),
                                Text("Incoming Voice Call")
                              ],
                            ),
                            trailing: CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                callModel?.userModels?.imageUrl ??
                                    callModel?.groupImage ??
                                    "",
                              ),
                            ),
                          ),
                          height10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      isRinging = false;
                                    });
                                    if (callModel!.callType == "normal") {
                                      context.read<CallingBloc>().add(
                                          CallingEvent.endNormalCall(
                                              callId: callModel!.historyId));
                                    }
                                    context
                                        .read<CallingBloc>()
                                        .add(CallingEvent.clearCurrentCall());
                                  },
                                  color: Colors.red,
                                  height: 45,
                                  shape: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text("Decline"),
                                ),
                              ),
                              width10,
                              Expanded(
                                flex: 1,
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      isRinging = false;
                                    });
                                    if (callModel!.isVideoCall) {
                                      context.read<CallingBloc>().add(
                                          CallingEvent.setCurrentCall(
                                              callModel: callModel!));
                                      NavigationUtils.videoCallPage(context);
                                    } else {
                                      context.read<CallingBloc>().add(
                                          CallingEvent.setCurrentCall(
                                              callModel: callModel!));
                                      NavigationUtils.voiceCallPage(context);
                                    }
                                  },
                                  color: Colors.green,
                                  height: 45,
                                  shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide.none),
                                  child: Text("Accept"),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.navigationShell.currentIndex,
        onTap: (value) => widget.navigationShell.goBranch(value),
        selectedLabelStyle: GoogleFonts.nunito(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.primary(context),
        ),
        unselectedLabelStyle: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: null,
        ),
        items: [
          BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.chat_bubble_fill),
              icon: Icon(CupertinoIcons.chat_bubble),
              label: "Chats"),
          BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.app_fill),
              icon: Icon(CupertinoIcons.app),
              label: "Status"),
          BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.phone_solid),
              icon: Icon(CupertinoIcons.phone),
              label: "Calls"),
        ],
      ),
    );
  }
}
