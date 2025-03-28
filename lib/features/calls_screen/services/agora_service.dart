import 'dart:developer';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

import '../view_models/bloc/calling_bloc.dart';

class AgoraService {
  static final AgoraService instance = AgoraService._internal();
  factory AgoraService() => instance;
  static bool _userJoined = false;
  static RtcEngine? get engine => _engine;

  static RtcEngine? _engine;
  static const String _appId = "6917987a0ae941c2bcc8ec15c880761b";
  static const String _channelName = "test";

  AgoraService._internal();

  /// Initialize Agora Engine once globally
  Future<void> initialize(BuildContext context) async {
    await [Permission.microphone, Permission.camera].request();

    //create the engine
    _engine = createAgoraRtcEngine();
    await _engine!.initialize(const RtcEngineContext(
      appId: _appId,
      channelProfile: ChannelProfileType.channelProfileCommunication1v1,
    ));

    _engine!.registerEventHandler(
      RtcEngineEventHandler(
        onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
          log("local user ${connection.localUid} joined");
          context.read<CallingBloc>().add(CallingEvent.onLocalUserJoined());
          context.read<CallingBloc>().add(
              CallingEvent.updateAgoraId(id: connection.localUid.toString()));
          // _localUserJoined = true;
        },
        onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
          log("remote user $remoteUid joined");
          context.read<CallingBloc>().add(CallingEvent.addRemoteUser(
              remoteUid: remoteUid, localUid: connection.localUid!));
          context.read<CallingBloc>().add(
              CallingEvent.updateAgoraId(id: connection.localUid.toString()));
        },
        onUserMuteVideo: (connection, remoteUid, muted) {
          log("Remote user $remoteUid muted $muted");
          context.read<CallingBloc>().add(CallingEvent.onUserMuteVideo(
              remoteUid: remoteUid,
              localUid: connection.localUid!,
              muted: muted));
        },
        onUserMuteAudio: (connection, remoteUid, muted) {
          context.read<CallingBloc>().add(CallingEvent.onUserMuteAudio(
              remoteUid: remoteUid,
              localUid: connection.localUid!,
              muted: muted));
        },
        onUserOffline: (RtcConnection connection, int remoteUid,
            UserOfflineReasonType reason) {
          log("remote user $remoteUid left channel");
          context.read<CallingBloc>().add(CallingEvent.removeRemoteUser(
              remoteUid: remoteUid, localUid: connection.localUid!));
        },
        onTokenPrivilegeWillExpire: (RtcConnection connection, String token) {
          log('[onTokenPrivilegeWillExpire] connection: ${connection.toJson()}, token: $token');
        },
        onError: (ErrorCodeType err, String msg) {
          log("Agora Error: $err, Message: $msg");
        },
      ),
    );
  }

  /// Join Channel for **Video Call**
  Future<void> joinVideoCall(String token, BuildContext context) async {
    if (_engine == null) await initialize(context);
    if (_userJoined) return;
    _userJoined = true;
    await _engine!.enableVideo();
    await _engine!.startPreview();
    await _engine!.joinChannel(
      token: token,
      channelId: _channelName,
      uid: 0,
      options: const ChannelMediaOptions(),
    );
  }

  /// Join Channel for **Voice Call**
  Future<void> joinVoiceCall(String token, BuildContext context) async {
    try {
      if (_engine == null) await initialize(context);
      if (_userJoined) return;
      _userJoined = true;
      await _engine!.disableVideo();
      await _engine!.enableAudio();
      await _engine!.joinChannel(
        token: token,
        channelId: _channelName,
        uid: 0,
        options: const ChannelMediaOptions(),
      );
    } catch (e) {
      log(e.toString());
    }
  }

  /// Leave the channel
  Future<void> leaveChannel(BuildContext context) async {
    try {
      if (!context.mounted) return;
      context.read<CallingBloc>().add(CallingEvent.onLeave());
      // if (_engine == null) return;
      await _engine?.leaveChannel();
      log("User left the channel");
      _userJoined = false;
    } catch (e) {
      log(e.toString());
    }
  }

  /// Destroy the engine when the app is closed
  Future<void> destroyEngine() async {
    await _engine?.release();
    _engine = null;
  }
}
