import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';

class VideoCallWidget extends StatelessWidget {
  const VideoCallWidget({
    super.key,
    required this.width,
    required this.height,
    required this.rtcEngine,
    this.isLocalUser = true,
    this.uid,
  });
  final double width;
  final double height;
  final RtcEngine? rtcEngine;
  final bool isLocalUser;
  final int? uid;

  @override
  Widget build(BuildContext context) {
    if (rtcEngine == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    if (!isLocalUser) {
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(color: Colors.green),
            child: AgoraVideoView(
              controller: VideoViewController.remote(
                rtcEngine: rtcEngine!,
                canvas: VideoCanvas(uid: uid),
                connection: const RtcConnection(channelId: "test"),
              ),
            )),
      );
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: width,
        height: height,
        color: Colors.amber,
        child: AgoraVideoView(
          controller: VideoViewController(
            rtcEngine: rtcEngine!,
            canvas: const VideoCanvas(uid: 0),
          ),
        ),
      ),
    );
  }
}
