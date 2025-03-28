part of 'calling_bloc.dart';

@freezed
class CallingEvent with _$CallingEvent {
  const factory CallingEvent.started() = _Started;
  const factory CallingEvent.callHistory() = _CallHistory;
  const factory CallingEvent.getCallStream() = _GetCallStream;
  const factory CallingEvent.startVideoCalling({required UserModels receiver}) =
      _StartVideoCalling;
  const factory CallingEvent.startVoiceCalling({required UserModels receiver}) =
      _StartVoiceCalling;
  const factory CallingEvent.endNormalCall({required String callId}) =
      _EndNormalCall;
  const factory CallingEvent.startGroupVideoCalling(
      {required ChatModel group}) = _StartGroupVideoCalling;
  const factory CallingEvent.startGroupVoiceCalling(
      {required ChatModel group}) = _StartGroupVoiceCalling;
  const factory CallingEvent.endGroupCall({required String callId}) =
      _EndGroupCall;
  const factory CallingEvent.selectCallModel({required CallModel callModel}) =
      _SelectCallModel;

  const factory CallingEvent.updateActiveCalls(
          {required List<QueryDocumentSnapshot<Map<String, dynamic>>> docs}) =
      _UpdateActiveCalls;
  const factory CallingEvent.updateCurrentCall(
          {required DocumentSnapshot<Map<String, dynamic>> docs}) =
      _UpdateCurrentCall;
  const factory CallingEvent.setCurrentCall({required CallModel callModel}) =
      _SetCurrentCall;
  const factory CallingEvent.pickUpReceiverNormalCall(
      {required String callId}) = _PickUpReceiverNormalCall;
  const factory CallingEvent.updateAgoraId({required String id}) =
      _UpdateAgoraId;

  ///call engine config
  const factory CallingEvent.addRemoteUser(
      {required int remoteUid, required int localUid}) = _AddRemoteUser;
  const factory CallingEvent.removeRemoteUser(
      {required int remoteUid, required int localUid}) = _RemoveRemoteUser;
  const factory CallingEvent.onUserMuteVideo(
      {required int remoteUid,
      required int localUid,
      required bool muted}) = _OnUserMuteVideo;
  const factory CallingEvent.onUserMuteAudio(
      {required int remoteUid,
      required int localUid,
      required bool muted}) = _OnUserMuteAudio;
  const factory CallingEvent.onLocalUserJoined() = _OnLocalUserJoined;
  const factory CallingEvent.onLeave() = _OnLeave;
}
