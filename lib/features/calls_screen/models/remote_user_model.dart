import 'package:flutter/widgets.dart';

class RemoteUserModel {
  final int uid;
  final int localUid;
  final int? firebaseUid;
  bool isVideoMuted;
  bool isAudioMuted;
  RemoteUserModel({
    required this.uid,
    required this.localUid,
    this.firebaseUid,
    this.isVideoMuted = false,
    this.isAudioMuted = false,
  });

  RemoteUserModel copyWith({
    int? uid,
    int? localUid,
    ValueGetter<int?>? firebaseUid,
    bool? isVideoMuted,
    bool? isAudioMuted,
  }) {
    return RemoteUserModel(
      uid: uid ?? this.uid,
      localUid: localUid ?? this.localUid,
      firebaseUid: firebaseUid != null ? firebaseUid() : this.firebaseUid,
      isVideoMuted: isVideoMuted ?? this.isVideoMuted,
      isAudioMuted: isAudioMuted ?? this.isAudioMuted,
    );
  }
}
