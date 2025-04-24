// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calling_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CallingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallingEventCopyWith<$Res> {
  factory $CallingEventCopyWith(
          CallingEvent value, $Res Function(CallingEvent) then) =
      _$CallingEventCopyWithImpl<$Res, CallingEvent>;
}

/// @nodoc
class _$CallingEventCopyWithImpl<$Res, $Val extends CallingEvent>
    implements $CallingEventCopyWith<$Res> {
  _$CallingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CallingEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CallingEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CallHistoryImplCopyWith<$Res> {
  factory _$$CallHistoryImplCopyWith(
          _$CallHistoryImpl value, $Res Function(_$CallHistoryImpl) then) =
      __$$CallHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CallHistoryImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$CallHistoryImpl>
    implements _$$CallHistoryImplCopyWith<$Res> {
  __$$CallHistoryImplCopyWithImpl(
      _$CallHistoryImpl _value, $Res Function(_$CallHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CallHistoryImpl implements _CallHistory {
  const _$CallHistoryImpl();

  @override
  String toString() {
    return 'CallingEvent.callHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CallHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return callHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return callHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (callHistory != null) {
      return callHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return callHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return callHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (callHistory != null) {
      return callHistory(this);
    }
    return orElse();
  }
}

abstract class _CallHistory implements CallingEvent {
  const factory _CallHistory() = _$CallHistoryImpl;
}

/// @nodoc
abstract class _$$GetCallStreamImplCopyWith<$Res> {
  factory _$$GetCallStreamImplCopyWith(
          _$GetCallStreamImpl value, $Res Function(_$GetCallStreamImpl) then) =
      __$$GetCallStreamImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCallStreamImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$GetCallStreamImpl>
    implements _$$GetCallStreamImplCopyWith<$Res> {
  __$$GetCallStreamImplCopyWithImpl(
      _$GetCallStreamImpl _value, $Res Function(_$GetCallStreamImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCallStreamImpl implements _GetCallStream {
  const _$GetCallStreamImpl();

  @override
  String toString() {
    return 'CallingEvent.getCallStream()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCallStreamImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return getCallStream();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return getCallStream?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (getCallStream != null) {
      return getCallStream();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return getCallStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return getCallStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (getCallStream != null) {
      return getCallStream(this);
    }
    return orElse();
  }
}

abstract class _GetCallStream implements CallingEvent {
  const factory _GetCallStream() = _$GetCallStreamImpl;
}

/// @nodoc
abstract class _$$StartVideoCallingImplCopyWith<$Res> {
  factory _$$StartVideoCallingImplCopyWith(_$StartVideoCallingImpl value,
          $Res Function(_$StartVideoCallingImpl) then) =
      __$$StartVideoCallingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModels receiver});
}

/// @nodoc
class __$$StartVideoCallingImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$StartVideoCallingImpl>
    implements _$$StartVideoCallingImplCopyWith<$Res> {
  __$$StartVideoCallingImplCopyWithImpl(_$StartVideoCallingImpl _value,
      $Res Function(_$StartVideoCallingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiver = null,
  }) {
    return _then(_$StartVideoCallingImpl(
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as UserModels,
    ));
  }
}

/// @nodoc

class _$StartVideoCallingImpl implements _StartVideoCalling {
  const _$StartVideoCallingImpl({required this.receiver});

  @override
  final UserModels receiver;

  @override
  String toString() {
    return 'CallingEvent.startVideoCalling(receiver: $receiver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartVideoCallingImpl &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiver);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartVideoCallingImplCopyWith<_$StartVideoCallingImpl> get copyWith =>
      __$$StartVideoCallingImplCopyWithImpl<_$StartVideoCallingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return startVideoCalling(receiver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return startVideoCalling?.call(receiver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (startVideoCalling != null) {
      return startVideoCalling(receiver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return startVideoCalling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return startVideoCalling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (startVideoCalling != null) {
      return startVideoCalling(this);
    }
    return orElse();
  }
}

abstract class _StartVideoCalling implements CallingEvent {
  const factory _StartVideoCalling({required final UserModels receiver}) =
      _$StartVideoCallingImpl;

  UserModels get receiver;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartVideoCallingImplCopyWith<_$StartVideoCallingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartVoiceCallingImplCopyWith<$Res> {
  factory _$$StartVoiceCallingImplCopyWith(_$StartVoiceCallingImpl value,
          $Res Function(_$StartVoiceCallingImpl) then) =
      __$$StartVoiceCallingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModels receiver});
}

/// @nodoc
class __$$StartVoiceCallingImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$StartVoiceCallingImpl>
    implements _$$StartVoiceCallingImplCopyWith<$Res> {
  __$$StartVoiceCallingImplCopyWithImpl(_$StartVoiceCallingImpl _value,
      $Res Function(_$StartVoiceCallingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiver = null,
  }) {
    return _then(_$StartVoiceCallingImpl(
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as UserModels,
    ));
  }
}

/// @nodoc

class _$StartVoiceCallingImpl implements _StartVoiceCalling {
  const _$StartVoiceCallingImpl({required this.receiver});

  @override
  final UserModels receiver;

  @override
  String toString() {
    return 'CallingEvent.startVoiceCalling(receiver: $receiver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartVoiceCallingImpl &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiver);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartVoiceCallingImplCopyWith<_$StartVoiceCallingImpl> get copyWith =>
      __$$StartVoiceCallingImplCopyWithImpl<_$StartVoiceCallingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return startVoiceCalling(receiver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return startVoiceCalling?.call(receiver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (startVoiceCalling != null) {
      return startVoiceCalling(receiver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return startVoiceCalling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return startVoiceCalling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (startVoiceCalling != null) {
      return startVoiceCalling(this);
    }
    return orElse();
  }
}

abstract class _StartVoiceCalling implements CallingEvent {
  const factory _StartVoiceCalling({required final UserModels receiver}) =
      _$StartVoiceCallingImpl;

  UserModels get receiver;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartVoiceCallingImplCopyWith<_$StartVoiceCallingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndNormalCallImplCopyWith<$Res> {
  factory _$$EndNormalCallImplCopyWith(
          _$EndNormalCallImpl value, $Res Function(_$EndNormalCallImpl) then) =
      __$$EndNormalCallImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String callId});
}

/// @nodoc
class __$$EndNormalCallImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$EndNormalCallImpl>
    implements _$$EndNormalCallImplCopyWith<$Res> {
  __$$EndNormalCallImplCopyWithImpl(
      _$EndNormalCallImpl _value, $Res Function(_$EndNormalCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callId = null,
  }) {
    return _then(_$EndNormalCallImpl(
      callId: null == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EndNormalCallImpl implements _EndNormalCall {
  const _$EndNormalCallImpl({required this.callId});

  @override
  final String callId;

  @override
  String toString() {
    return 'CallingEvent.endNormalCall(callId: $callId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndNormalCallImpl &&
            (identical(other.callId, callId) || other.callId == callId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callId);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EndNormalCallImplCopyWith<_$EndNormalCallImpl> get copyWith =>
      __$$EndNormalCallImplCopyWithImpl<_$EndNormalCallImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return endNormalCall(callId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return endNormalCall?.call(callId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (endNormalCall != null) {
      return endNormalCall(callId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return endNormalCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return endNormalCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (endNormalCall != null) {
      return endNormalCall(this);
    }
    return orElse();
  }
}

abstract class _EndNormalCall implements CallingEvent {
  const factory _EndNormalCall({required final String callId}) =
      _$EndNormalCallImpl;

  String get callId;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EndNormalCallImplCopyWith<_$EndNormalCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartGroupVideoCallingImplCopyWith<$Res> {
  factory _$$StartGroupVideoCallingImplCopyWith(
          _$StartGroupVideoCallingImpl value,
          $Res Function(_$StartGroupVideoCallingImpl) then) =
      __$$StartGroupVideoCallingImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String chatId,
      String image,
      String groupName,
      List<String> participants});
}

/// @nodoc
class __$$StartGroupVideoCallingImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$StartGroupVideoCallingImpl>
    implements _$$StartGroupVideoCallingImplCopyWith<$Res> {
  __$$StartGroupVideoCallingImplCopyWithImpl(
      _$StartGroupVideoCallingImpl _value,
      $Res Function(_$StartGroupVideoCallingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? image = null,
    Object? groupName = null,
    Object? participants = null,
  }) {
    return _then(_$StartGroupVideoCallingImpl(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$StartGroupVideoCallingImpl implements _StartGroupVideoCalling {
  const _$StartGroupVideoCallingImpl(
      {required this.chatId,
      required this.image,
      required this.groupName,
      required final List<String> participants})
      : _participants = participants;

  @override
  final String chatId;
  @override
  final String image;
  @override
  final String groupName;
  final List<String> _participants;
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  String toString() {
    return 'CallingEvent.startGroupVideoCalling(chatId: $chatId, image: $image, groupName: $groupName, participants: $participants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartGroupVideoCallingImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId, image, groupName,
      const DeepCollectionEquality().hash(_participants));

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartGroupVideoCallingImplCopyWith<_$StartGroupVideoCallingImpl>
      get copyWith => __$$StartGroupVideoCallingImplCopyWithImpl<
          _$StartGroupVideoCallingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return startGroupVideoCalling(chatId, image, groupName, participants);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return startGroupVideoCalling?.call(chatId, image, groupName, participants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (startGroupVideoCalling != null) {
      return startGroupVideoCalling(chatId, image, groupName, participants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return startGroupVideoCalling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return startGroupVideoCalling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (startGroupVideoCalling != null) {
      return startGroupVideoCalling(this);
    }
    return orElse();
  }
}

abstract class _StartGroupVideoCalling implements CallingEvent {
  const factory _StartGroupVideoCalling(
      {required final String chatId,
      required final String image,
      required final String groupName,
      required final List<String> participants}) = _$StartGroupVideoCallingImpl;

  String get chatId;
  String get image;
  String get groupName;
  List<String> get participants;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartGroupVideoCallingImplCopyWith<_$StartGroupVideoCallingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartGroupVoiceCallingImplCopyWith<$Res> {
  factory _$$StartGroupVoiceCallingImplCopyWith(
          _$StartGroupVoiceCallingImpl value,
          $Res Function(_$StartGroupVoiceCallingImpl) then) =
      __$$StartGroupVoiceCallingImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String chatId,
      String image,
      String groupName,
      List<String> participants});
}

/// @nodoc
class __$$StartGroupVoiceCallingImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$StartGroupVoiceCallingImpl>
    implements _$$StartGroupVoiceCallingImplCopyWith<$Res> {
  __$$StartGroupVoiceCallingImplCopyWithImpl(
      _$StartGroupVoiceCallingImpl _value,
      $Res Function(_$StartGroupVoiceCallingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? image = null,
    Object? groupName = null,
    Object? participants = null,
  }) {
    return _then(_$StartGroupVoiceCallingImpl(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$StartGroupVoiceCallingImpl implements _StartGroupVoiceCalling {
  const _$StartGroupVoiceCallingImpl(
      {required this.chatId,
      required this.image,
      required this.groupName,
      required final List<String> participants})
      : _participants = participants;

  @override
  final String chatId;
  @override
  final String image;
  @override
  final String groupName;
  final List<String> _participants;
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  String toString() {
    return 'CallingEvent.startGroupVoiceCalling(chatId: $chatId, image: $image, groupName: $groupName, participants: $participants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartGroupVoiceCallingImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId, image, groupName,
      const DeepCollectionEquality().hash(_participants));

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartGroupVoiceCallingImplCopyWith<_$StartGroupVoiceCallingImpl>
      get copyWith => __$$StartGroupVoiceCallingImplCopyWithImpl<
          _$StartGroupVoiceCallingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return startGroupVoiceCalling(chatId, image, groupName, participants);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return startGroupVoiceCalling?.call(chatId, image, groupName, participants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (startGroupVoiceCalling != null) {
      return startGroupVoiceCalling(chatId, image, groupName, participants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return startGroupVoiceCalling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return startGroupVoiceCalling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (startGroupVoiceCalling != null) {
      return startGroupVoiceCalling(this);
    }
    return orElse();
  }
}

abstract class _StartGroupVoiceCalling implements CallingEvent {
  const factory _StartGroupVoiceCalling(
      {required final String chatId,
      required final String image,
      required final String groupName,
      required final List<String> participants}) = _$StartGroupVoiceCallingImpl;

  String get chatId;
  String get image;
  String get groupName;
  List<String> get participants;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartGroupVoiceCallingImplCopyWith<_$StartGroupVoiceCallingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndGroupCallImplCopyWith<$Res> {
  factory _$$EndGroupCallImplCopyWith(
          _$EndGroupCallImpl value, $Res Function(_$EndGroupCallImpl) then) =
      __$$EndGroupCallImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String callId});
}

/// @nodoc
class __$$EndGroupCallImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$EndGroupCallImpl>
    implements _$$EndGroupCallImplCopyWith<$Res> {
  __$$EndGroupCallImplCopyWithImpl(
      _$EndGroupCallImpl _value, $Res Function(_$EndGroupCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callId = null,
  }) {
    return _then(_$EndGroupCallImpl(
      callId: null == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EndGroupCallImpl implements _EndGroupCall {
  const _$EndGroupCallImpl({required this.callId});

  @override
  final String callId;

  @override
  String toString() {
    return 'CallingEvent.endGroupCall(callId: $callId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndGroupCallImpl &&
            (identical(other.callId, callId) || other.callId == callId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callId);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EndGroupCallImplCopyWith<_$EndGroupCallImpl> get copyWith =>
      __$$EndGroupCallImplCopyWithImpl<_$EndGroupCallImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return endGroupCall(callId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return endGroupCall?.call(callId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (endGroupCall != null) {
      return endGroupCall(callId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return endGroupCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return endGroupCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (endGroupCall != null) {
      return endGroupCall(this);
    }
    return orElse();
  }
}

abstract class _EndGroupCall implements CallingEvent {
  const factory _EndGroupCall({required final String callId}) =
      _$EndGroupCallImpl;

  String get callId;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EndGroupCallImplCopyWith<_$EndGroupCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectCallModelImplCopyWith<$Res> {
  factory _$$SelectCallModelImplCopyWith(_$SelectCallModelImpl value,
          $Res Function(_$SelectCallModelImpl) then) =
      __$$SelectCallModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CallModel callModel});
}

/// @nodoc
class __$$SelectCallModelImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$SelectCallModelImpl>
    implements _$$SelectCallModelImplCopyWith<$Res> {
  __$$SelectCallModelImplCopyWithImpl(
      _$SelectCallModelImpl _value, $Res Function(_$SelectCallModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callModel = null,
  }) {
    return _then(_$SelectCallModelImpl(
      callModel: null == callModel
          ? _value.callModel
          : callModel // ignore: cast_nullable_to_non_nullable
              as CallModel,
    ));
  }
}

/// @nodoc

class _$SelectCallModelImpl implements _SelectCallModel {
  const _$SelectCallModelImpl({required this.callModel});

  @override
  final CallModel callModel;

  @override
  String toString() {
    return 'CallingEvent.selectCallModel(callModel: $callModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCallModelImpl &&
            (identical(other.callModel, callModel) ||
                other.callModel == callModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callModel);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCallModelImplCopyWith<_$SelectCallModelImpl> get copyWith =>
      __$$SelectCallModelImplCopyWithImpl<_$SelectCallModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return selectCallModel(callModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return selectCallModel?.call(callModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (selectCallModel != null) {
      return selectCallModel(callModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return selectCallModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return selectCallModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (selectCallModel != null) {
      return selectCallModel(this);
    }
    return orElse();
  }
}

abstract class _SelectCallModel implements CallingEvent {
  const factory _SelectCallModel({required final CallModel callModel}) =
      _$SelectCallModelImpl;

  CallModel get callModel;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectCallModelImplCopyWith<_$SelectCallModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateActiveCallsImplCopyWith<$Res> {
  factory _$$UpdateActiveCallsImplCopyWith(_$UpdateActiveCallsImpl value,
          $Res Function(_$UpdateActiveCallsImpl) then) =
      __$$UpdateActiveCallsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QueryDocumentSnapshot<Map<String, dynamic>>> docs});
}

/// @nodoc
class __$$UpdateActiveCallsImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$UpdateActiveCallsImpl>
    implements _$$UpdateActiveCallsImplCopyWith<$Res> {
  __$$UpdateActiveCallsImplCopyWithImpl(_$UpdateActiveCallsImpl _value,
      $Res Function(_$UpdateActiveCallsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = null,
  }) {
    return _then(_$UpdateActiveCallsImpl(
      docs: null == docs
          ? _value._docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<QueryDocumentSnapshot<Map<String, dynamic>>>,
    ));
  }
}

/// @nodoc

class _$UpdateActiveCallsImpl implements _UpdateActiveCalls {
  const _$UpdateActiveCallsImpl(
      {required final List<QueryDocumentSnapshot<Map<String, dynamic>>> docs})
      : _docs = docs;

  final List<QueryDocumentSnapshot<Map<String, dynamic>>> _docs;
  @override
  List<QueryDocumentSnapshot<Map<String, dynamic>>> get docs {
    if (_docs is EqualUnmodifiableListView) return _docs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_docs);
  }

  @override
  String toString() {
    return 'CallingEvent.updateActiveCalls(docs: $docs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateActiveCallsImpl &&
            const DeepCollectionEquality().equals(other._docs, _docs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_docs));

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateActiveCallsImplCopyWith<_$UpdateActiveCallsImpl> get copyWith =>
      __$$UpdateActiveCallsImplCopyWithImpl<_$UpdateActiveCallsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return updateActiveCalls(docs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return updateActiveCalls?.call(docs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (updateActiveCalls != null) {
      return updateActiveCalls(docs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return updateActiveCalls(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return updateActiveCalls?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (updateActiveCalls != null) {
      return updateActiveCalls(this);
    }
    return orElse();
  }
}

abstract class _UpdateActiveCalls implements CallingEvent {
  const factory _UpdateActiveCalls(
      {required final List<QueryDocumentSnapshot<Map<String, dynamic>>>
          docs}) = _$UpdateActiveCallsImpl;

  List<QueryDocumentSnapshot<Map<String, dynamic>>> get docs;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateActiveCallsImplCopyWith<_$UpdateActiveCallsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCurrentCallImplCopyWith<$Res> {
  factory _$$UpdateCurrentCallImplCopyWith(_$UpdateCurrentCallImpl value,
          $Res Function(_$UpdateCurrentCallImpl) then) =
      __$$UpdateCurrentCallImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DocumentSnapshot<Map<String, dynamic>> docs});
}

/// @nodoc
class __$$UpdateCurrentCallImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$UpdateCurrentCallImpl>
    implements _$$UpdateCurrentCallImplCopyWith<$Res> {
  __$$UpdateCurrentCallImplCopyWithImpl(_$UpdateCurrentCallImpl _value,
      $Res Function(_$UpdateCurrentCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = null,
  }) {
    return _then(_$UpdateCurrentCallImpl(
      docs: null == docs
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as DocumentSnapshot<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$UpdateCurrentCallImpl implements _UpdateCurrentCall {
  const _$UpdateCurrentCallImpl({required this.docs});

  @override
  final DocumentSnapshot<Map<String, dynamic>> docs;

  @override
  String toString() {
    return 'CallingEvent.updateCurrentCall(docs: $docs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrentCallImpl &&
            (identical(other.docs, docs) || other.docs == docs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, docs);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCurrentCallImplCopyWith<_$UpdateCurrentCallImpl> get copyWith =>
      __$$UpdateCurrentCallImplCopyWithImpl<_$UpdateCurrentCallImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return updateCurrentCall(docs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return updateCurrentCall?.call(docs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (updateCurrentCall != null) {
      return updateCurrentCall(docs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return updateCurrentCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return updateCurrentCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (updateCurrentCall != null) {
      return updateCurrentCall(this);
    }
    return orElse();
  }
}

abstract class _UpdateCurrentCall implements CallingEvent {
  const factory _UpdateCurrentCall(
          {required final DocumentSnapshot<Map<String, dynamic>> docs}) =
      _$UpdateCurrentCallImpl;

  DocumentSnapshot<Map<String, dynamic>> get docs;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCurrentCallImplCopyWith<_$UpdateCurrentCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCurrentCallImplCopyWith<$Res> {
  factory _$$SetCurrentCallImplCopyWith(_$SetCurrentCallImpl value,
          $Res Function(_$SetCurrentCallImpl) then) =
      __$$SetCurrentCallImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CallModel callModel});
}

/// @nodoc
class __$$SetCurrentCallImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$SetCurrentCallImpl>
    implements _$$SetCurrentCallImplCopyWith<$Res> {
  __$$SetCurrentCallImplCopyWithImpl(
      _$SetCurrentCallImpl _value, $Res Function(_$SetCurrentCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callModel = null,
  }) {
    return _then(_$SetCurrentCallImpl(
      callModel: null == callModel
          ? _value.callModel
          : callModel // ignore: cast_nullable_to_non_nullable
              as CallModel,
    ));
  }
}

/// @nodoc

class _$SetCurrentCallImpl implements _SetCurrentCall {
  const _$SetCurrentCallImpl({required this.callModel});

  @override
  final CallModel callModel;

  @override
  String toString() {
    return 'CallingEvent.setCurrentCall(callModel: $callModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCurrentCallImpl &&
            (identical(other.callModel, callModel) ||
                other.callModel == callModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callModel);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCurrentCallImplCopyWith<_$SetCurrentCallImpl> get copyWith =>
      __$$SetCurrentCallImplCopyWithImpl<_$SetCurrentCallImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return setCurrentCall(callModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return setCurrentCall?.call(callModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (setCurrentCall != null) {
      return setCurrentCall(callModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return setCurrentCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return setCurrentCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (setCurrentCall != null) {
      return setCurrentCall(this);
    }
    return orElse();
  }
}

abstract class _SetCurrentCall implements CallingEvent {
  const factory _SetCurrentCall({required final CallModel callModel}) =
      _$SetCurrentCallImpl;

  CallModel get callModel;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetCurrentCallImplCopyWith<_$SetCurrentCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCurrentCallImplCopyWith<$Res> {
  factory _$$ClearCurrentCallImplCopyWith(_$ClearCurrentCallImpl value,
          $Res Function(_$ClearCurrentCallImpl) then) =
      __$$ClearCurrentCallImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCurrentCallImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$ClearCurrentCallImpl>
    implements _$$ClearCurrentCallImplCopyWith<$Res> {
  __$$ClearCurrentCallImplCopyWithImpl(_$ClearCurrentCallImpl _value,
      $Res Function(_$ClearCurrentCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearCurrentCallImpl implements _ClearCurrentCall {
  const _$ClearCurrentCallImpl();

  @override
  String toString() {
    return 'CallingEvent.clearCurrentCall()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearCurrentCallImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return clearCurrentCall();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return clearCurrentCall?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (clearCurrentCall != null) {
      return clearCurrentCall();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return clearCurrentCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return clearCurrentCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (clearCurrentCall != null) {
      return clearCurrentCall(this);
    }
    return orElse();
  }
}

abstract class _ClearCurrentCall implements CallingEvent {
  const factory _ClearCurrentCall() = _$ClearCurrentCallImpl;
}

/// @nodoc
abstract class _$$PickUpReceiverNormalCallImplCopyWith<$Res> {
  factory _$$PickUpReceiverNormalCallImplCopyWith(
          _$PickUpReceiverNormalCallImpl value,
          $Res Function(_$PickUpReceiverNormalCallImpl) then) =
      __$$PickUpReceiverNormalCallImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String callId});
}

/// @nodoc
class __$$PickUpReceiverNormalCallImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$PickUpReceiverNormalCallImpl>
    implements _$$PickUpReceiverNormalCallImplCopyWith<$Res> {
  __$$PickUpReceiverNormalCallImplCopyWithImpl(
      _$PickUpReceiverNormalCallImpl _value,
      $Res Function(_$PickUpReceiverNormalCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callId = null,
  }) {
    return _then(_$PickUpReceiverNormalCallImpl(
      callId: null == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickUpReceiverNormalCallImpl implements _PickUpReceiverNormalCall {
  const _$PickUpReceiverNormalCallImpl({required this.callId});

  @override
  final String callId;

  @override
  String toString() {
    return 'CallingEvent.pickUpReceiverNormalCall(callId: $callId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickUpReceiverNormalCallImpl &&
            (identical(other.callId, callId) || other.callId == callId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callId);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickUpReceiverNormalCallImplCopyWith<_$PickUpReceiverNormalCallImpl>
      get copyWith => __$$PickUpReceiverNormalCallImplCopyWithImpl<
          _$PickUpReceiverNormalCallImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return pickUpReceiverNormalCall(callId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return pickUpReceiverNormalCall?.call(callId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (pickUpReceiverNormalCall != null) {
      return pickUpReceiverNormalCall(callId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return pickUpReceiverNormalCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return pickUpReceiverNormalCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (pickUpReceiverNormalCall != null) {
      return pickUpReceiverNormalCall(this);
    }
    return orElse();
  }
}

abstract class _PickUpReceiverNormalCall implements CallingEvent {
  const factory _PickUpReceiverNormalCall({required final String callId}) =
      _$PickUpReceiverNormalCallImpl;

  String get callId;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickUpReceiverNormalCallImplCopyWith<_$PickUpReceiverNormalCallImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAgoraIdImplCopyWith<$Res> {
  factory _$$UpdateAgoraIdImplCopyWith(
          _$UpdateAgoraIdImpl value, $Res Function(_$UpdateAgoraIdImpl) then) =
      __$$UpdateAgoraIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$UpdateAgoraIdImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$UpdateAgoraIdImpl>
    implements _$$UpdateAgoraIdImplCopyWith<$Res> {
  __$$UpdateAgoraIdImplCopyWithImpl(
      _$UpdateAgoraIdImpl _value, $Res Function(_$UpdateAgoraIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UpdateAgoraIdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateAgoraIdImpl implements _UpdateAgoraId {
  const _$UpdateAgoraIdImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'CallingEvent.updateAgoraId(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAgoraIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAgoraIdImplCopyWith<_$UpdateAgoraIdImpl> get copyWith =>
      __$$UpdateAgoraIdImplCopyWithImpl<_$UpdateAgoraIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return updateAgoraId(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return updateAgoraId?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (updateAgoraId != null) {
      return updateAgoraId(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return updateAgoraId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return updateAgoraId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (updateAgoraId != null) {
      return updateAgoraId(this);
    }
    return orElse();
  }
}

abstract class _UpdateAgoraId implements CallingEvent {
  const factory _UpdateAgoraId({required final String id}) =
      _$UpdateAgoraIdImpl;

  String get id;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAgoraIdImplCopyWith<_$UpdateAgoraIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddRemoteUserImplCopyWith<$Res> {
  factory _$$AddRemoteUserImplCopyWith(
          _$AddRemoteUserImpl value, $Res Function(_$AddRemoteUserImpl) then) =
      __$$AddRemoteUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int remoteUid, int localUid});
}

/// @nodoc
class __$$AddRemoteUserImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$AddRemoteUserImpl>
    implements _$$AddRemoteUserImplCopyWith<$Res> {
  __$$AddRemoteUserImplCopyWithImpl(
      _$AddRemoteUserImpl _value, $Res Function(_$AddRemoteUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteUid = null,
    Object? localUid = null,
  }) {
    return _then(_$AddRemoteUserImpl(
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddRemoteUserImpl implements _AddRemoteUser {
  const _$AddRemoteUserImpl({required this.remoteUid, required this.localUid});

  @override
  final int remoteUid;
  @override
  final int localUid;

  @override
  String toString() {
    return 'CallingEvent.addRemoteUser(remoteUid: $remoteUid, localUid: $localUid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRemoteUserImpl &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteUid, localUid);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRemoteUserImplCopyWith<_$AddRemoteUserImpl> get copyWith =>
      __$$AddRemoteUserImplCopyWithImpl<_$AddRemoteUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return addRemoteUser(remoteUid, localUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return addRemoteUser?.call(remoteUid, localUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (addRemoteUser != null) {
      return addRemoteUser(remoteUid, localUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return addRemoteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return addRemoteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (addRemoteUser != null) {
      return addRemoteUser(this);
    }
    return orElse();
  }
}

abstract class _AddRemoteUser implements CallingEvent {
  const factory _AddRemoteUser(
      {required final int remoteUid,
      required final int localUid}) = _$AddRemoteUserImpl;

  int get remoteUid;
  int get localUid;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddRemoteUserImplCopyWith<_$AddRemoteUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveRemoteUserImplCopyWith<$Res> {
  factory _$$RemoveRemoteUserImplCopyWith(_$RemoveRemoteUserImpl value,
          $Res Function(_$RemoveRemoteUserImpl) then) =
      __$$RemoveRemoteUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int remoteUid, int localUid});
}

/// @nodoc
class __$$RemoveRemoteUserImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$RemoveRemoteUserImpl>
    implements _$$RemoveRemoteUserImplCopyWith<$Res> {
  __$$RemoveRemoteUserImplCopyWithImpl(_$RemoveRemoteUserImpl _value,
      $Res Function(_$RemoveRemoteUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteUid = null,
    Object? localUid = null,
  }) {
    return _then(_$RemoveRemoteUserImpl(
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveRemoteUserImpl implements _RemoveRemoteUser {
  const _$RemoveRemoteUserImpl(
      {required this.remoteUid, required this.localUid});

  @override
  final int remoteUid;
  @override
  final int localUid;

  @override
  String toString() {
    return 'CallingEvent.removeRemoteUser(remoteUid: $remoteUid, localUid: $localUid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveRemoteUserImpl &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteUid, localUid);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveRemoteUserImplCopyWith<_$RemoveRemoteUserImpl> get copyWith =>
      __$$RemoveRemoteUserImplCopyWithImpl<_$RemoveRemoteUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return removeRemoteUser(remoteUid, localUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return removeRemoteUser?.call(remoteUid, localUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (removeRemoteUser != null) {
      return removeRemoteUser(remoteUid, localUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return removeRemoteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return removeRemoteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (removeRemoteUser != null) {
      return removeRemoteUser(this);
    }
    return orElse();
  }
}

abstract class _RemoveRemoteUser implements CallingEvent {
  const factory _RemoveRemoteUser(
      {required final int remoteUid,
      required final int localUid}) = _$RemoveRemoteUserImpl;

  int get remoteUid;
  int get localUid;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveRemoteUserImplCopyWith<_$RemoveRemoteUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnUserMuteVideoImplCopyWith<$Res> {
  factory _$$OnUserMuteVideoImplCopyWith(_$OnUserMuteVideoImpl value,
          $Res Function(_$OnUserMuteVideoImpl) then) =
      __$$OnUserMuteVideoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int remoteUid, int localUid, bool muted});
}

/// @nodoc
class __$$OnUserMuteVideoImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$OnUserMuteVideoImpl>
    implements _$$OnUserMuteVideoImplCopyWith<$Res> {
  __$$OnUserMuteVideoImplCopyWithImpl(
      _$OnUserMuteVideoImpl _value, $Res Function(_$OnUserMuteVideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteUid = null,
    Object? localUid = null,
    Object? muted = null,
  }) {
    return _then(_$OnUserMuteVideoImpl(
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      muted: null == muted
          ? _value.muted
          : muted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnUserMuteVideoImpl implements _OnUserMuteVideo {
  const _$OnUserMuteVideoImpl(
      {required this.remoteUid, required this.localUid, required this.muted});

  @override
  final int remoteUid;
  @override
  final int localUid;
  @override
  final bool muted;

  @override
  String toString() {
    return 'CallingEvent.onUserMuteVideo(remoteUid: $remoteUid, localUid: $localUid, muted: $muted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUserMuteVideoImpl &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid) &&
            (identical(other.muted, muted) || other.muted == muted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteUid, localUid, muted);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnUserMuteVideoImplCopyWith<_$OnUserMuteVideoImpl> get copyWith =>
      __$$OnUserMuteVideoImplCopyWithImpl<_$OnUserMuteVideoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return onUserMuteVideo(remoteUid, localUid, muted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return onUserMuteVideo?.call(remoteUid, localUid, muted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (onUserMuteVideo != null) {
      return onUserMuteVideo(remoteUid, localUid, muted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return onUserMuteVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return onUserMuteVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (onUserMuteVideo != null) {
      return onUserMuteVideo(this);
    }
    return orElse();
  }
}

abstract class _OnUserMuteVideo implements CallingEvent {
  const factory _OnUserMuteVideo(
      {required final int remoteUid,
      required final int localUid,
      required final bool muted}) = _$OnUserMuteVideoImpl;

  int get remoteUid;
  int get localUid;
  bool get muted;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnUserMuteVideoImplCopyWith<_$OnUserMuteVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnUserMuteAudioImplCopyWith<$Res> {
  factory _$$OnUserMuteAudioImplCopyWith(_$OnUserMuteAudioImpl value,
          $Res Function(_$OnUserMuteAudioImpl) then) =
      __$$OnUserMuteAudioImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int remoteUid, int localUid, bool muted});
}

/// @nodoc
class __$$OnUserMuteAudioImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$OnUserMuteAudioImpl>
    implements _$$OnUserMuteAudioImplCopyWith<$Res> {
  __$$OnUserMuteAudioImplCopyWithImpl(
      _$OnUserMuteAudioImpl _value, $Res Function(_$OnUserMuteAudioImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteUid = null,
    Object? localUid = null,
    Object? muted = null,
  }) {
    return _then(_$OnUserMuteAudioImpl(
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      muted: null == muted
          ? _value.muted
          : muted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnUserMuteAudioImpl implements _OnUserMuteAudio {
  const _$OnUserMuteAudioImpl(
      {required this.remoteUid, required this.localUid, required this.muted});

  @override
  final int remoteUid;
  @override
  final int localUid;
  @override
  final bool muted;

  @override
  String toString() {
    return 'CallingEvent.onUserMuteAudio(remoteUid: $remoteUid, localUid: $localUid, muted: $muted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUserMuteAudioImpl &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid) &&
            (identical(other.muted, muted) || other.muted == muted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteUid, localUid, muted);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnUserMuteAudioImplCopyWith<_$OnUserMuteAudioImpl> get copyWith =>
      __$$OnUserMuteAudioImplCopyWithImpl<_$OnUserMuteAudioImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return onUserMuteAudio(remoteUid, localUid, muted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return onUserMuteAudio?.call(remoteUid, localUid, muted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (onUserMuteAudio != null) {
      return onUserMuteAudio(remoteUid, localUid, muted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return onUserMuteAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return onUserMuteAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (onUserMuteAudio != null) {
      return onUserMuteAudio(this);
    }
    return orElse();
  }
}

abstract class _OnUserMuteAudio implements CallingEvent {
  const factory _OnUserMuteAudio(
      {required final int remoteUid,
      required final int localUid,
      required final bool muted}) = _$OnUserMuteAudioImpl;

  int get remoteUid;
  int get localUid;
  bool get muted;

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnUserMuteAudioImplCopyWith<_$OnUserMuteAudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLocalUserJoinedImplCopyWith<$Res> {
  factory _$$OnLocalUserJoinedImplCopyWith(_$OnLocalUserJoinedImpl value,
          $Res Function(_$OnLocalUserJoinedImpl) then) =
      __$$OnLocalUserJoinedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLocalUserJoinedImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$OnLocalUserJoinedImpl>
    implements _$$OnLocalUserJoinedImplCopyWith<$Res> {
  __$$OnLocalUserJoinedImplCopyWithImpl(_$OnLocalUserJoinedImpl _value,
      $Res Function(_$OnLocalUserJoinedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnLocalUserJoinedImpl implements _OnLocalUserJoined {
  const _$OnLocalUserJoinedImpl();

  @override
  String toString() {
    return 'CallingEvent.onLocalUserJoined()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLocalUserJoinedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return onLocalUserJoined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return onLocalUserJoined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (onLocalUserJoined != null) {
      return onLocalUserJoined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return onLocalUserJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return onLocalUserJoined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (onLocalUserJoined != null) {
      return onLocalUserJoined(this);
    }
    return orElse();
  }
}

abstract class _OnLocalUserJoined implements CallingEvent {
  const factory _OnLocalUserJoined() = _$OnLocalUserJoinedImpl;
}

/// @nodoc
abstract class _$$OnLeaveImplCopyWith<$Res> {
  factory _$$OnLeaveImplCopyWith(
          _$OnLeaveImpl value, $Res Function(_$OnLeaveImpl) then) =
      __$$OnLeaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLeaveImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$OnLeaveImpl>
    implements _$$OnLeaveImplCopyWith<$Res> {
  __$$OnLeaveImplCopyWithImpl(
      _$OnLeaveImpl _value, $Res Function(_$OnLeaveImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnLeaveImpl implements _OnLeave {
  const _$OnLeaveImpl();

  @override
  String toString() {
    return 'CallingEvent.onLeave()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLeaveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return onLeave();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return onLeave?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (onLeave != null) {
      return onLeave();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return onLeave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return onLeave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (onLeave != null) {
      return onLeave(this);
    }
    return orElse();
  }
}

abstract class _OnLeave implements CallingEvent {
  const factory _OnLeave() = _$OnLeaveImpl;
}

/// @nodoc
abstract class _$$ClearErrorMessageImplCopyWith<$Res> {
  factory _$$ClearErrorMessageImplCopyWith(_$ClearErrorMessageImpl value,
          $Res Function(_$ClearErrorMessageImpl) then) =
      __$$ClearErrorMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearErrorMessageImplCopyWithImpl<$Res>
    extends _$CallingEventCopyWithImpl<$Res, _$ClearErrorMessageImpl>
    implements _$$ClearErrorMessageImplCopyWith<$Res> {
  __$$ClearErrorMessageImplCopyWithImpl(_$ClearErrorMessageImpl _value,
      $Res Function(_$ClearErrorMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearErrorMessageImpl implements _ClearErrorMessage {
  const _$ClearErrorMessageImpl();

  @override
  String toString() {
    return 'CallingEvent.clearErrorMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearErrorMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callHistory,
    required TResult Function() getCallStream,
    required TResult Function(UserModels receiver) startVideoCalling,
    required TResult Function(UserModels receiver) startVoiceCalling,
    required TResult Function(String callId) endNormalCall,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVideoCalling,
    required TResult Function(String chatId, String image, String groupName,
            List<String> participants)
        startGroupVoiceCalling,
    required TResult Function(String callId) endGroupCall,
    required TResult Function(CallModel callModel) selectCallModel,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        updateActiveCalls,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        updateCurrentCall,
    required TResult Function(CallModel callModel) setCurrentCall,
    required TResult Function() clearCurrentCall,
    required TResult Function(String callId) pickUpReceiverNormalCall,
    required TResult Function(String id) updateAgoraId,
    required TResult Function(int remoteUid, int localUid) addRemoteUser,
    required TResult Function(int remoteUid, int localUid) removeRemoteUser,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteVideo,
    required TResult Function(int remoteUid, int localUid, bool muted)
        onUserMuteAudio,
    required TResult Function() onLocalUserJoined,
    required TResult Function() onLeave,
    required TResult Function() clearErrorMessage,
  }) {
    return clearErrorMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callHistory,
    TResult? Function()? getCallStream,
    TResult? Function(UserModels receiver)? startVideoCalling,
    TResult? Function(UserModels receiver)? startVoiceCalling,
    TResult? Function(String callId)? endNormalCall,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult? Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult? Function(String callId)? endGroupCall,
    TResult? Function(CallModel callModel)? selectCallModel,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult? Function(CallModel callModel)? setCurrentCall,
    TResult? Function()? clearCurrentCall,
    TResult? Function(String callId)? pickUpReceiverNormalCall,
    TResult? Function(String id)? updateAgoraId,
    TResult? Function(int remoteUid, int localUid)? addRemoteUser,
    TResult? Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult? Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult? Function()? onLocalUserJoined,
    TResult? Function()? onLeave,
    TResult? Function()? clearErrorMessage,
  }) {
    return clearErrorMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callHistory,
    TResult Function()? getCallStream,
    TResult Function(UserModels receiver)? startVideoCalling,
    TResult Function(UserModels receiver)? startVoiceCalling,
    TResult Function(String callId)? endNormalCall,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVideoCalling,
    TResult Function(String chatId, String image, String groupName,
            List<String> participants)?
        startGroupVoiceCalling,
    TResult Function(String callId)? endGroupCall,
    TResult Function(CallModel callModel)? selectCallModel,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        updateActiveCalls,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        updateCurrentCall,
    TResult Function(CallModel callModel)? setCurrentCall,
    TResult Function()? clearCurrentCall,
    TResult Function(String callId)? pickUpReceiverNormalCall,
    TResult Function(String id)? updateAgoraId,
    TResult Function(int remoteUid, int localUid)? addRemoteUser,
    TResult Function(int remoteUid, int localUid)? removeRemoteUser,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteVideo,
    TResult Function(int remoteUid, int localUid, bool muted)? onUserMuteAudio,
    TResult Function()? onLocalUserJoined,
    TResult Function()? onLeave,
    TResult Function()? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (clearErrorMessage != null) {
      return clearErrorMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallHistory value) callHistory,
    required TResult Function(_GetCallStream value) getCallStream,
    required TResult Function(_StartVideoCalling value) startVideoCalling,
    required TResult Function(_StartVoiceCalling value) startVoiceCalling,
    required TResult Function(_EndNormalCall value) endNormalCall,
    required TResult Function(_StartGroupVideoCalling value)
        startGroupVideoCalling,
    required TResult Function(_StartGroupVoiceCalling value)
        startGroupVoiceCalling,
    required TResult Function(_EndGroupCall value) endGroupCall,
    required TResult Function(_SelectCallModel value) selectCallModel,
    required TResult Function(_UpdateActiveCalls value) updateActiveCalls,
    required TResult Function(_UpdateCurrentCall value) updateCurrentCall,
    required TResult Function(_SetCurrentCall value) setCurrentCall,
    required TResult Function(_ClearCurrentCall value) clearCurrentCall,
    required TResult Function(_PickUpReceiverNormalCall value)
        pickUpReceiverNormalCall,
    required TResult Function(_UpdateAgoraId value) updateAgoraId,
    required TResult Function(_AddRemoteUser value) addRemoteUser,
    required TResult Function(_RemoveRemoteUser value) removeRemoteUser,
    required TResult Function(_OnUserMuteVideo value) onUserMuteVideo,
    required TResult Function(_OnUserMuteAudio value) onUserMuteAudio,
    required TResult Function(_OnLocalUserJoined value) onLocalUserJoined,
    required TResult Function(_OnLeave value) onLeave,
    required TResult Function(_ClearErrorMessage value) clearErrorMessage,
  }) {
    return clearErrorMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallHistory value)? callHistory,
    TResult? Function(_GetCallStream value)? getCallStream,
    TResult? Function(_StartVideoCalling value)? startVideoCalling,
    TResult? Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult? Function(_EndNormalCall value)? endNormalCall,
    TResult? Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult? Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult? Function(_EndGroupCall value)? endGroupCall,
    TResult? Function(_SelectCallModel value)? selectCallModel,
    TResult? Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult? Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult? Function(_SetCurrentCall value)? setCurrentCall,
    TResult? Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult? Function(_PickUpReceiverNormalCall value)?
        pickUpReceiverNormalCall,
    TResult? Function(_UpdateAgoraId value)? updateAgoraId,
    TResult? Function(_AddRemoteUser value)? addRemoteUser,
    TResult? Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult? Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult? Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult? Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult? Function(_OnLeave value)? onLeave,
    TResult? Function(_ClearErrorMessage value)? clearErrorMessage,
  }) {
    return clearErrorMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallHistory value)? callHistory,
    TResult Function(_GetCallStream value)? getCallStream,
    TResult Function(_StartVideoCalling value)? startVideoCalling,
    TResult Function(_StartVoiceCalling value)? startVoiceCalling,
    TResult Function(_EndNormalCall value)? endNormalCall,
    TResult Function(_StartGroupVideoCalling value)? startGroupVideoCalling,
    TResult Function(_StartGroupVoiceCalling value)? startGroupVoiceCalling,
    TResult Function(_EndGroupCall value)? endGroupCall,
    TResult Function(_SelectCallModel value)? selectCallModel,
    TResult Function(_UpdateActiveCalls value)? updateActiveCalls,
    TResult Function(_UpdateCurrentCall value)? updateCurrentCall,
    TResult Function(_SetCurrentCall value)? setCurrentCall,
    TResult Function(_ClearCurrentCall value)? clearCurrentCall,
    TResult Function(_PickUpReceiverNormalCall value)? pickUpReceiverNormalCall,
    TResult Function(_UpdateAgoraId value)? updateAgoraId,
    TResult Function(_AddRemoteUser value)? addRemoteUser,
    TResult Function(_RemoveRemoteUser value)? removeRemoteUser,
    TResult Function(_OnUserMuteVideo value)? onUserMuteVideo,
    TResult Function(_OnUserMuteAudio value)? onUserMuteAudio,
    TResult Function(_OnLocalUserJoined value)? onLocalUserJoined,
    TResult Function(_OnLeave value)? onLeave,
    TResult Function(_ClearErrorMessage value)? clearErrorMessage,
    required TResult orElse(),
  }) {
    if (clearErrorMessage != null) {
      return clearErrorMessage(this);
    }
    return orElse();
  }
}

abstract class _ClearErrorMessage implements CallingEvent {
  const factory _ClearErrorMessage() = _$ClearErrorMessageImpl;
}

/// @nodoc
mixin _$CallingState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  AppException? get errorMsg => throw _privateConstructorUsedError;
  String get callingPageMsg => throw _privateConstructorUsedError;
  Stream<QuerySnapshot<Map<String, dynamic>>>? get stream =>
      throw _privateConstructorUsedError;
  CallModel? get currentCall => throw _privateConstructorUsedError;
  CallModel? get selectedCall => throw _privateConstructorUsedError;
  List<CallModel> get activeCalls => throw _privateConstructorUsedError;
  List<RemoteUserModel> get remoteUsers => throw _privateConstructorUsedError;
  bool get localUserJoined => throw _privateConstructorUsedError;
  List<UserModels> get selectedCallUsers => throw _privateConstructorUsedError;
  List<CallModel> get selectedCallHistory => throw _privateConstructorUsedError;
  List<CallModel> get callHistory => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic isLoading,
            bool isError,
            AppException? errorMsg,
            String callingPageMsg,
            Stream<QuerySnapshot<Map<String, dynamic>>>? stream,
            CallModel? currentCall,
            CallModel? selectedCall,
            List<CallModel> activeCalls,
            List<RemoteUserModel> remoteUsers,
            bool localUserJoined,
            List<UserModels> selectedCallUsers,
            List<CallModel> selectedCallHistory,
            List<CallModel> callHistory)
        callingPageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            dynamic isLoading,
            bool isError,
            AppException? errorMsg,
            String callingPageMsg,
            Stream<QuerySnapshot<Map<String, dynamic>>>? stream,
            CallModel? currentCall,
            CallModel? selectedCall,
            List<CallModel> activeCalls,
            List<RemoteUserModel> remoteUsers,
            bool localUserJoined,
            List<UserModels> selectedCallUsers,
            List<CallModel> selectedCallHistory,
            List<CallModel> callHistory)?
        callingPageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            dynamic isLoading,
            bool isError,
            AppException? errorMsg,
            String callingPageMsg,
            Stream<QuerySnapshot<Map<String, dynamic>>>? stream,
            CallModel? currentCall,
            CallModel? selectedCall,
            List<CallModel> activeCalls,
            List<RemoteUserModel> remoteUsers,
            bool localUserJoined,
            List<UserModels> selectedCallUsers,
            List<CallModel> selectedCallHistory,
            List<CallModel> callHistory)?
        callingPageState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CallingPageState value) callingPageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CallingPageState value)? callingPageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CallingPageState value)? callingPageState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CallingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CallingStateCopyWith<CallingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallingStateCopyWith<$Res> {
  factory $CallingStateCopyWith(
          CallingState value, $Res Function(CallingState) then) =
      _$CallingStateCopyWithImpl<$Res, CallingState>;
  @useResult
  $Res call(
      {dynamic isLoading,
      bool isError,
      AppException? errorMsg,
      String callingPageMsg,
      Stream<QuerySnapshot<Map<String, dynamic>>>? stream,
      CallModel? currentCall,
      CallModel? selectedCall,
      List<CallModel> activeCalls,
      List<RemoteUserModel> remoteUsers,
      bool localUserJoined,
      List<UserModels> selectedCallUsers,
      List<CallModel> selectedCallHistory,
      List<CallModel> callHistory});
}

/// @nodoc
class _$CallingStateCopyWithImpl<$Res, $Val extends CallingState>
    implements $CallingStateCopyWith<$Res> {
  _$CallingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CallingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = null,
    Object? errorMsg = freezed,
    Object? callingPageMsg = null,
    Object? stream = freezed,
    Object? currentCall = freezed,
    Object? selectedCall = freezed,
    Object? activeCalls = null,
    Object? remoteUsers = null,
    Object? localUserJoined = null,
    Object? selectedCallUsers = null,
    Object? selectedCallHistory = null,
    Object? callHistory = null,
  }) {
    return _then(_value.copyWith(
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as AppException?,
      callingPageMsg: null == callingPageMsg
          ? _value.callingPageMsg
          : callingPageMsg // ignore: cast_nullable_to_non_nullable
              as String,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Map<String, dynamic>>>?,
      currentCall: freezed == currentCall
          ? _value.currentCall
          : currentCall // ignore: cast_nullable_to_non_nullable
              as CallModel?,
      selectedCall: freezed == selectedCall
          ? _value.selectedCall
          : selectedCall // ignore: cast_nullable_to_non_nullable
              as CallModel?,
      activeCalls: null == activeCalls
          ? _value.activeCalls
          : activeCalls // ignore: cast_nullable_to_non_nullable
              as List<CallModel>,
      remoteUsers: null == remoteUsers
          ? _value.remoteUsers
          : remoteUsers // ignore: cast_nullable_to_non_nullable
              as List<RemoteUserModel>,
      localUserJoined: null == localUserJoined
          ? _value.localUserJoined
          : localUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCallUsers: null == selectedCallUsers
          ? _value.selectedCallUsers
          : selectedCallUsers // ignore: cast_nullable_to_non_nullable
              as List<UserModels>,
      selectedCallHistory: null == selectedCallHistory
          ? _value.selectedCallHistory
          : selectedCallHistory // ignore: cast_nullable_to_non_nullable
              as List<CallModel>,
      callHistory: null == callHistory
          ? _value.callHistory
          : callHistory // ignore: cast_nullable_to_non_nullable
              as List<CallModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CallingPageStateImplCopyWith<$Res>
    implements $CallingStateCopyWith<$Res> {
  factory _$$CallingPageStateImplCopyWith(_$CallingPageStateImpl value,
          $Res Function(_$CallingPageStateImpl) then) =
      __$$CallingPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic isLoading,
      bool isError,
      AppException? errorMsg,
      String callingPageMsg,
      Stream<QuerySnapshot<Map<String, dynamic>>>? stream,
      CallModel? currentCall,
      CallModel? selectedCall,
      List<CallModel> activeCalls,
      List<RemoteUserModel> remoteUsers,
      bool localUserJoined,
      List<UserModels> selectedCallUsers,
      List<CallModel> selectedCallHistory,
      List<CallModel> callHistory});
}

/// @nodoc
class __$$CallingPageStateImplCopyWithImpl<$Res>
    extends _$CallingStateCopyWithImpl<$Res, _$CallingPageStateImpl>
    implements _$$CallingPageStateImplCopyWith<$Res> {
  __$$CallingPageStateImplCopyWithImpl(_$CallingPageStateImpl _value,
      $Res Function(_$CallingPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = null,
    Object? errorMsg = freezed,
    Object? callingPageMsg = null,
    Object? stream = freezed,
    Object? currentCall = freezed,
    Object? selectedCall = freezed,
    Object? activeCalls = null,
    Object? remoteUsers = null,
    Object? localUserJoined = null,
    Object? selectedCallUsers = null,
    Object? selectedCallHistory = null,
    Object? callHistory = null,
  }) {
    return _then(_$CallingPageStateImpl(
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as AppException?,
      callingPageMsg: null == callingPageMsg
          ? _value.callingPageMsg
          : callingPageMsg // ignore: cast_nullable_to_non_nullable
              as String,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Map<String, dynamic>>>?,
      currentCall: freezed == currentCall
          ? _value.currentCall
          : currentCall // ignore: cast_nullable_to_non_nullable
              as CallModel?,
      selectedCall: freezed == selectedCall
          ? _value.selectedCall
          : selectedCall // ignore: cast_nullable_to_non_nullable
              as CallModel?,
      activeCalls: null == activeCalls
          ? _value._activeCalls
          : activeCalls // ignore: cast_nullable_to_non_nullable
              as List<CallModel>,
      remoteUsers: null == remoteUsers
          ? _value._remoteUsers
          : remoteUsers // ignore: cast_nullable_to_non_nullable
              as List<RemoteUserModel>,
      localUserJoined: null == localUserJoined
          ? _value.localUserJoined
          : localUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCallUsers: null == selectedCallUsers
          ? _value._selectedCallUsers
          : selectedCallUsers // ignore: cast_nullable_to_non_nullable
              as List<UserModels>,
      selectedCallHistory: null == selectedCallHistory
          ? _value._selectedCallHistory
          : selectedCallHistory // ignore: cast_nullable_to_non_nullable
              as List<CallModel>,
      callHistory: null == callHistory
          ? _value._callHistory
          : callHistory // ignore: cast_nullable_to_non_nullable
              as List<CallModel>,
    ));
  }
}

/// @nodoc

class _$CallingPageStateImpl implements _CallingPageState {
  const _$CallingPageStateImpl(
      {this.isLoading = false,
      this.isError = false,
      this.errorMsg = null,
      this.callingPageMsg = "",
      this.stream = null,
      this.currentCall = null,
      this.selectedCall = null,
      final List<CallModel> activeCalls = const [],
      final List<RemoteUserModel> remoteUsers = const [],
      this.localUserJoined = false,
      final List<UserModels> selectedCallUsers = const [],
      final List<CallModel> selectedCallHistory = const [],
      final List<CallModel> callHistory = const []})
      : _activeCalls = activeCalls,
        _remoteUsers = remoteUsers,
        _selectedCallUsers = selectedCallUsers,
        _selectedCallHistory = selectedCallHistory,
        _callHistory = callHistory;

  @override
  @JsonKey()
  final dynamic isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final AppException? errorMsg;
  @override
  @JsonKey()
  final String callingPageMsg;
  @override
  @JsonKey()
  final Stream<QuerySnapshot<Map<String, dynamic>>>? stream;
  @override
  @JsonKey()
  final CallModel? currentCall;
  @override
  @JsonKey()
  final CallModel? selectedCall;
  final List<CallModel> _activeCalls;
  @override
  @JsonKey()
  List<CallModel> get activeCalls {
    if (_activeCalls is EqualUnmodifiableListView) return _activeCalls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeCalls);
  }

  final List<RemoteUserModel> _remoteUsers;
  @override
  @JsonKey()
  List<RemoteUserModel> get remoteUsers {
    if (_remoteUsers is EqualUnmodifiableListView) return _remoteUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_remoteUsers);
  }

  @override
  @JsonKey()
  final bool localUserJoined;
  final List<UserModels> _selectedCallUsers;
  @override
  @JsonKey()
  List<UserModels> get selectedCallUsers {
    if (_selectedCallUsers is EqualUnmodifiableListView)
      return _selectedCallUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCallUsers);
  }

  final List<CallModel> _selectedCallHistory;
  @override
  @JsonKey()
  List<CallModel> get selectedCallHistory {
    if (_selectedCallHistory is EqualUnmodifiableListView)
      return _selectedCallHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCallHistory);
  }

  final List<CallModel> _callHistory;
  @override
  @JsonKey()
  List<CallModel> get callHistory {
    if (_callHistory is EqualUnmodifiableListView) return _callHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_callHistory);
  }

  @override
  String toString() {
    return 'CallingState.callingPageState(isLoading: $isLoading, isError: $isError, errorMsg: $errorMsg, callingPageMsg: $callingPageMsg, stream: $stream, currentCall: $currentCall, selectedCall: $selectedCall, activeCalls: $activeCalls, remoteUsers: $remoteUsers, localUserJoined: $localUserJoined, selectedCallUsers: $selectedCallUsers, selectedCallHistory: $selectedCallHistory, callHistory: $callHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallingPageStateImpl &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.callingPageMsg, callingPageMsg) ||
                other.callingPageMsg == callingPageMsg) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.currentCall, currentCall) ||
                other.currentCall == currentCall) &&
            (identical(other.selectedCall, selectedCall) ||
                other.selectedCall == selectedCall) &&
            const DeepCollectionEquality()
                .equals(other._activeCalls, _activeCalls) &&
            const DeepCollectionEquality()
                .equals(other._remoteUsers, _remoteUsers) &&
            (identical(other.localUserJoined, localUserJoined) ||
                other.localUserJoined == localUserJoined) &&
            const DeepCollectionEquality()
                .equals(other._selectedCallUsers, _selectedCallUsers) &&
            const DeepCollectionEquality()
                .equals(other._selectedCallHistory, _selectedCallHistory) &&
            const DeepCollectionEquality()
                .equals(other._callHistory, _callHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      isError,
      errorMsg,
      callingPageMsg,
      stream,
      currentCall,
      selectedCall,
      const DeepCollectionEquality().hash(_activeCalls),
      const DeepCollectionEquality().hash(_remoteUsers),
      localUserJoined,
      const DeepCollectionEquality().hash(_selectedCallUsers),
      const DeepCollectionEquality().hash(_selectedCallHistory),
      const DeepCollectionEquality().hash(_callHistory));

  /// Create a copy of CallingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CallingPageStateImplCopyWith<_$CallingPageStateImpl> get copyWith =>
      __$$CallingPageStateImplCopyWithImpl<_$CallingPageStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic isLoading,
            bool isError,
            AppException? errorMsg,
            String callingPageMsg,
            Stream<QuerySnapshot<Map<String, dynamic>>>? stream,
            CallModel? currentCall,
            CallModel? selectedCall,
            List<CallModel> activeCalls,
            List<RemoteUserModel> remoteUsers,
            bool localUserJoined,
            List<UserModels> selectedCallUsers,
            List<CallModel> selectedCallHistory,
            List<CallModel> callHistory)
        callingPageState,
  }) {
    return callingPageState(
        isLoading,
        isError,
        errorMsg,
        callingPageMsg,
        stream,
        currentCall,
        selectedCall,
        activeCalls,
        remoteUsers,
        localUserJoined,
        selectedCallUsers,
        selectedCallHistory,
        callHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            dynamic isLoading,
            bool isError,
            AppException? errorMsg,
            String callingPageMsg,
            Stream<QuerySnapshot<Map<String, dynamic>>>? stream,
            CallModel? currentCall,
            CallModel? selectedCall,
            List<CallModel> activeCalls,
            List<RemoteUserModel> remoteUsers,
            bool localUserJoined,
            List<UserModels> selectedCallUsers,
            List<CallModel> selectedCallHistory,
            List<CallModel> callHistory)?
        callingPageState,
  }) {
    return callingPageState?.call(
        isLoading,
        isError,
        errorMsg,
        callingPageMsg,
        stream,
        currentCall,
        selectedCall,
        activeCalls,
        remoteUsers,
        localUserJoined,
        selectedCallUsers,
        selectedCallHistory,
        callHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            dynamic isLoading,
            bool isError,
            AppException? errorMsg,
            String callingPageMsg,
            Stream<QuerySnapshot<Map<String, dynamic>>>? stream,
            CallModel? currentCall,
            CallModel? selectedCall,
            List<CallModel> activeCalls,
            List<RemoteUserModel> remoteUsers,
            bool localUserJoined,
            List<UserModels> selectedCallUsers,
            List<CallModel> selectedCallHistory,
            List<CallModel> callHistory)?
        callingPageState,
    required TResult orElse(),
  }) {
    if (callingPageState != null) {
      return callingPageState(
          isLoading,
          isError,
          errorMsg,
          callingPageMsg,
          stream,
          currentCall,
          selectedCall,
          activeCalls,
          remoteUsers,
          localUserJoined,
          selectedCallUsers,
          selectedCallHistory,
          callHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CallingPageState value) callingPageState,
  }) {
    return callingPageState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CallingPageState value)? callingPageState,
  }) {
    return callingPageState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CallingPageState value)? callingPageState,
    required TResult orElse(),
  }) {
    if (callingPageState != null) {
      return callingPageState(this);
    }
    return orElse();
  }
}

abstract class _CallingPageState implements CallingState {
  const factory _CallingPageState(
      {final dynamic isLoading,
      final bool isError,
      final AppException? errorMsg,
      final String callingPageMsg,
      final Stream<QuerySnapshot<Map<String, dynamic>>>? stream,
      final CallModel? currentCall,
      final CallModel? selectedCall,
      final List<CallModel> activeCalls,
      final List<RemoteUserModel> remoteUsers,
      final bool localUserJoined,
      final List<UserModels> selectedCallUsers,
      final List<CallModel> selectedCallHistory,
      final List<CallModel> callHistory}) = _$CallingPageStateImpl;

  @override
  dynamic get isLoading;
  @override
  bool get isError;
  @override
  AppException? get errorMsg;
  @override
  String get callingPageMsg;
  @override
  Stream<QuerySnapshot<Map<String, dynamic>>>? get stream;
  @override
  CallModel? get currentCall;
  @override
  CallModel? get selectedCall;
  @override
  List<CallModel> get activeCalls;
  @override
  List<RemoteUserModel> get remoteUsers;
  @override
  bool get localUserJoined;
  @override
  List<UserModels> get selectedCallUsers;
  @override
  List<CallModel> get selectedCallHistory;
  @override
  List<CallModel> get callHistory;

  /// Create a copy of CallingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CallingPageStateImplCopyWith<_$CallingPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
