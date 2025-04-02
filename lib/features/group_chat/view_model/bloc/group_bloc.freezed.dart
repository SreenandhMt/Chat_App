// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupEventCopyWith<$Res> {
  factory $GroupEventCopyWith(
          GroupEvent value, $Res Function(GroupEvent) then) =
      _$GroupEventCopyWithImpl<$Res, GroupEvent>;
}

/// @nodoc
class _$GroupEventCopyWithImpl<$Res, $Val extends GroupEvent>
    implements $GroupEventCopyWith<$Res> {
  _$GroupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadDataImplCopyWith<$Res> {
  factory _$$LoadDataImplCopyWith(
          _$LoadDataImpl value, $Res Function(_$LoadDataImpl) then) =
      __$$LoadDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatModel chat});
}

/// @nodoc
class __$$LoadDataImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$LoadDataImpl>
    implements _$$LoadDataImplCopyWith<$Res> {
  __$$LoadDataImplCopyWithImpl(
      _$LoadDataImpl _value, $Res Function(_$LoadDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
  }) {
    return _then(_$LoadDataImpl(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as ChatModel,
    ));
  }
}

/// @nodoc

class _$LoadDataImpl implements _LoadData {
  const _$LoadDataImpl({required this.chat});

  @override
  final ChatModel chat;

  @override
  String toString() {
    return 'GroupEvent.loadData(chat: $chat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDataImpl &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chat);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadDataImplCopyWith<_$LoadDataImpl> get copyWith =>
      __$$LoadDataImplCopyWithImpl<_$LoadDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return loadData(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return loadData?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadData implements GroupEvent {
  const factory _LoadData({required final ChatModel chat}) = _$LoadDataImpl;

  ChatModel get chat;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadDataImplCopyWith<_$LoadDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GroupEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements GroupEvent {
  const factory _SendMessage(final String message) = _$SendMessageImpl;

  String get message;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendImageImplCopyWith<$Res> {
  factory _$$SendImageImplCopyWith(
          _$SendImageImpl value, $Res Function(_$SendImageImpl) then) =
      __$$SendImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$SendImageImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$SendImageImpl>
    implements _$$SendImageImplCopyWith<$Res> {
  __$$SendImageImplCopyWithImpl(
      _$SendImageImpl _value, $Res Function(_$SendImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$SendImageImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendImageImpl implements _SendImage {
  const _$SendImageImpl(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'GroupEvent.sendImage(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendImageImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendImageImplCopyWith<_$SendImageImpl> get copyWith =>
      __$$SendImageImplCopyWithImpl<_$SendImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return sendImage(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return sendImage?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (sendImage != null) {
      return sendImage(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return sendImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return sendImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (sendImage != null) {
      return sendImage(this);
    }
    return orElse();
  }
}

abstract class _SendImage implements GroupEvent {
  const factory _SendImage(final String path) = _$SendImageImpl;

  String get path;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendImageImplCopyWith<_$SendImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddReactionImplCopyWith<$Res> {
  factory _$$AddReactionImplCopyWith(
          _$AddReactionImpl value, $Res Function(_$AddReactionImpl) then) =
      __$$AddReactionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId, String emoji});
}

/// @nodoc
class __$$AddReactionImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$AddReactionImpl>
    implements _$$AddReactionImplCopyWith<$Res> {
  __$$AddReactionImplCopyWithImpl(
      _$AddReactionImpl _value, $Res Function(_$AddReactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? emoji = null,
  }) {
    return _then(_$AddReactionImpl(
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddReactionImpl implements _AddReaction {
  const _$AddReactionImpl(this.messageId, this.emoji);

  @override
  final String messageId;
  @override
  final String emoji;

  @override
  String toString() {
    return 'GroupEvent.addReaction(messageId: $messageId, emoji: $emoji)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddReactionImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.emoji, emoji) || other.emoji == emoji));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId, emoji);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddReactionImplCopyWith<_$AddReactionImpl> get copyWith =>
      __$$AddReactionImplCopyWithImpl<_$AddReactionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return addReaction(messageId, emoji);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return addReaction?.call(messageId, emoji);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (addReaction != null) {
      return addReaction(messageId, emoji);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return addReaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return addReaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (addReaction != null) {
      return addReaction(this);
    }
    return orElse();
  }
}

abstract class _AddReaction implements GroupEvent {
  const factory _AddReaction(final String messageId, final String emoji) =
      _$AddReactionImpl;

  String get messageId;
  String get emoji;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddReactionImplCopyWith<_$AddReactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendAudioFileImplCopyWith<$Res> {
  factory _$$SendAudioFileImplCopyWith(
          _$SendAudioFileImpl value, $Res Function(_$SendAudioFileImpl) then) =
      __$$SendAudioFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File file, List<double> waveList});
}

/// @nodoc
class __$$SendAudioFileImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$SendAudioFileImpl>
    implements _$$SendAudioFileImplCopyWith<$Res> {
  __$$SendAudioFileImplCopyWithImpl(
      _$SendAudioFileImpl _value, $Res Function(_$SendAudioFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? waveList = null,
  }) {
    return _then(_$SendAudioFileImpl(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      null == waveList
          ? _value._waveList
          : waveList // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$SendAudioFileImpl implements _SendAudioFile {
  const _$SendAudioFileImpl(this.file, final List<double> waveList)
      : _waveList = waveList;

  @override
  final File file;
  final List<double> _waveList;
  @override
  List<double> get waveList {
    if (_waveList is EqualUnmodifiableListView) return _waveList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waveList);
  }

  @override
  String toString() {
    return 'GroupEvent.sendAudioFile(file: $file, waveList: $waveList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendAudioFileImpl &&
            (identical(other.file, file) || other.file == file) &&
            const DeepCollectionEquality().equals(other._waveList, _waveList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, file, const DeepCollectionEquality().hash(_waveList));

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendAudioFileImplCopyWith<_$SendAudioFileImpl> get copyWith =>
      __$$SendAudioFileImplCopyWithImpl<_$SendAudioFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return sendAudioFile(file, waveList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return sendAudioFile?.call(file, waveList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (sendAudioFile != null) {
      return sendAudioFile(file, waveList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return sendAudioFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return sendAudioFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (sendAudioFile != null) {
      return sendAudioFile(this);
    }
    return orElse();
  }
}

abstract class _SendAudioFile implements GroupEvent {
  const factory _SendAudioFile(final File file, final List<double> waveList) =
      _$SendAudioFileImpl;

  File get file;
  List<double> get waveList;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendAudioFileImplCopyWith<_$SendAudioFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendVideoFileImplCopyWith<$Res> {
  factory _$$SendVideoFileImplCopyWith(
          _$SendVideoFileImpl value, $Res Function(_$SendVideoFileImpl) then) =
      __$$SendVideoFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$SendVideoFileImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$SendVideoFileImpl>
    implements _$$SendVideoFileImplCopyWith<$Res> {
  __$$SendVideoFileImplCopyWithImpl(
      _$SendVideoFileImpl _value, $Res Function(_$SendVideoFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$SendVideoFileImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendVideoFileImpl implements _SendVideoFile {
  const _$SendVideoFileImpl(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'GroupEvent.sendVideoFile(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendVideoFileImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendVideoFileImplCopyWith<_$SendVideoFileImpl> get copyWith =>
      __$$SendVideoFileImplCopyWithImpl<_$SendVideoFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return sendVideoFile(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return sendVideoFile?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (sendVideoFile != null) {
      return sendVideoFile(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return sendVideoFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return sendVideoFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (sendVideoFile != null) {
      return sendVideoFile(this);
    }
    return orElse();
  }
}

abstract class _SendVideoFile implements GroupEvent {
  const factory _SendVideoFile(final String path) = _$SendVideoFileImpl;

  String get path;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendVideoFileImplCopyWith<_$SendVideoFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendLinkImplCopyWith<$Res> {
  factory _$$SendLinkImplCopyWith(
          _$SendLinkImpl value, $Res Function(_$SendLinkImpl) then) =
      __$$SendLinkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String link});
}

/// @nodoc
class __$$SendLinkImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$SendLinkImpl>
    implements _$$SendLinkImplCopyWith<$Res> {
  __$$SendLinkImplCopyWithImpl(
      _$SendLinkImpl _value, $Res Function(_$SendLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$SendLinkImpl(
      null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendLinkImpl implements _SendLink {
  const _$SendLinkImpl(this.link);

  @override
  final String link;

  @override
  String toString() {
    return 'GroupEvent.sendLink(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendLinkImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendLinkImplCopyWith<_$SendLinkImpl> get copyWith =>
      __$$SendLinkImplCopyWithImpl<_$SendLinkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return sendLink(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return sendLink?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (sendLink != null) {
      return sendLink(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return sendLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return sendLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (sendLink != null) {
      return sendLink(this);
    }
    return orElse();
  }
}

abstract class _SendLink implements GroupEvent {
  const factory _SendLink(final String link) = _$SendLinkImpl;

  String get link;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendLinkImplCopyWith<_$SendLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendDocumentImplCopyWith<$Res> {
  factory _$$SendDocumentImplCopyWith(
          _$SendDocumentImpl value, $Res Function(_$SendDocumentImpl) then) =
      __$$SendDocumentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$SendDocumentImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$SendDocumentImpl>
    implements _$$SendDocumentImplCopyWith<$Res> {
  __$$SendDocumentImplCopyWithImpl(
      _$SendDocumentImpl _value, $Res Function(_$SendDocumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$SendDocumentImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendDocumentImpl implements _SendDocument {
  const _$SendDocumentImpl(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'GroupEvent.sendDocument(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendDocumentImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendDocumentImplCopyWith<_$SendDocumentImpl> get copyWith =>
      __$$SendDocumentImplCopyWithImpl<_$SendDocumentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return sendDocument(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return sendDocument?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (sendDocument != null) {
      return sendDocument(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return sendDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return sendDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (sendDocument != null) {
      return sendDocument(this);
    }
    return orElse();
  }
}

abstract class _SendDocument implements GroupEvent {
  const factory _SendDocument(final String path) = _$SendDocumentImpl;

  String get path;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendDocumentImplCopyWith<_$SendDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePollImplCopyWith<$Res> {
  factory _$$CreatePollImplCopyWith(
          _$CreatePollImpl value, $Res Function(_$CreatePollImpl) then) =
      __$$CreatePollImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String question, List<String> options});
}

/// @nodoc
class __$$CreatePollImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$CreatePollImpl>
    implements _$$CreatePollImplCopyWith<$Res> {
  __$$CreatePollImplCopyWithImpl(
      _$CreatePollImpl _value, $Res Function(_$CreatePollImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? options = null,
  }) {
    return _then(_$CreatePollImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CreatePollImpl implements _CreatePoll {
  const _$CreatePollImpl(
      {required this.question, required final List<String> options})
      : _options = options;

  @override
  final String question;
  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'GroupEvent.createPoll(question: $question, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePollImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, question, const DeepCollectionEquality().hash(_options));

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePollImplCopyWith<_$CreatePollImpl> get copyWith =>
      __$$CreatePollImplCopyWithImpl<_$CreatePollImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return createPoll(question, options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return createPoll?.call(question, options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (createPoll != null) {
      return createPoll(question, options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return createPoll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return createPoll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (createPoll != null) {
      return createPoll(this);
    }
    return orElse();
  }
}

abstract class _CreatePoll implements GroupEvent {
  const factory _CreatePoll(
      {required final String question,
      required final List<String> options}) = _$CreatePollImpl;

  String get question;
  List<String> get options;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePollImplCopyWith<_$CreatePollImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendStickerImplCopyWith<$Res> {
  factory _$$SendStickerImplCopyWith(
          _$SendStickerImpl value, $Res Function(_$SendStickerImpl) then) =
      __$$SendStickerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String stickerPath});
}

/// @nodoc
class __$$SendStickerImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$SendStickerImpl>
    implements _$$SendStickerImplCopyWith<$Res> {
  __$$SendStickerImplCopyWithImpl(
      _$SendStickerImpl _value, $Res Function(_$SendStickerImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stickerPath = null,
  }) {
    return _then(_$SendStickerImpl(
      stickerPath: null == stickerPath
          ? _value.stickerPath
          : stickerPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendStickerImpl implements _SendSticker {
  const _$SendStickerImpl({required this.stickerPath});

  @override
  final String stickerPath;

  @override
  String toString() {
    return 'GroupEvent.sendSticker(stickerPath: $stickerPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendStickerImpl &&
            (identical(other.stickerPath, stickerPath) ||
                other.stickerPath == stickerPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stickerPath);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendStickerImplCopyWith<_$SendStickerImpl> get copyWith =>
      __$$SendStickerImplCopyWithImpl<_$SendStickerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return sendSticker(stickerPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return sendSticker?.call(stickerPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (sendSticker != null) {
      return sendSticker(stickerPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return sendSticker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return sendSticker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (sendSticker != null) {
      return sendSticker(this);
    }
    return orElse();
  }
}

abstract class _SendSticker implements GroupEvent {
  const factory _SendSticker({required final String stickerPath}) =
      _$SendStickerImpl;

  String get stickerPath;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendStickerImplCopyWith<_$SendStickerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KickUserImplCopyWith<$Res> {
  factory _$$KickUserImplCopyWith(
          _$KickUserImpl value, $Res Function(_$KickUserImpl) then) =
      __$$KickUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$KickUserImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$KickUserImpl>
    implements _$$KickUserImplCopyWith<$Res> {
  __$$KickUserImplCopyWithImpl(
      _$KickUserImpl _value, $Res Function(_$KickUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$KickUserImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KickUserImpl implements _KickUser {
  const _$KickUserImpl({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'GroupEvent.kickUser(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KickUserImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KickUserImplCopyWith<_$KickUserImpl> get copyWith =>
      __$$KickUserImplCopyWithImpl<_$KickUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return kickUser(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return kickUser?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (kickUser != null) {
      return kickUser(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return kickUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return kickUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (kickUser != null) {
      return kickUser(this);
    }
    return orElse();
  }
}

abstract class _KickUser implements GroupEvent {
  const factory _KickUser({required final String uid}) = _$KickUserImpl;

  String get uid;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KickUserImplCopyWith<_$KickUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExitGroupImplCopyWith<$Res> {
  factory _$$ExitGroupImplCopyWith(
          _$ExitGroupImpl value, $Res Function(_$ExitGroupImpl) then) =
      __$$ExitGroupImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExitGroupImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$ExitGroupImpl>
    implements _$$ExitGroupImplCopyWith<$Res> {
  __$$ExitGroupImplCopyWithImpl(
      _$ExitGroupImpl _value, $Res Function(_$ExitGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ExitGroupImpl implements _ExitGroup {
  const _$ExitGroupImpl();

  @override
  String toString() {
    return 'GroupEvent.exitGroup()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExitGroupImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return exitGroup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return exitGroup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (exitGroup != null) {
      return exitGroup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return exitGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return exitGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (exitGroup != null) {
      return exitGroup(this);
    }
    return orElse();
  }
}

abstract class _ExitGroup implements GroupEvent {
  const factory _ExitGroup() = _$ExitGroupImpl;
}

/// @nodoc
abstract class _$$DeleteGroupImplCopyWith<$Res> {
  factory _$$DeleteGroupImplCopyWith(
          _$DeleteGroupImpl value, $Res Function(_$DeleteGroupImpl) then) =
      __$$DeleteGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$DeleteGroupImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$DeleteGroupImpl>
    implements _$$DeleteGroupImplCopyWith<$Res> {
  __$$DeleteGroupImplCopyWithImpl(
      _$DeleteGroupImpl _value, $Res Function(_$DeleteGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$DeleteGroupImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteGroupImpl implements _DeleteGroup {
  const _$DeleteGroupImpl({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'GroupEvent.deleteGroup(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteGroupImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteGroupImplCopyWith<_$DeleteGroupImpl> get copyWith =>
      __$$DeleteGroupImplCopyWithImpl<_$DeleteGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return deleteGroup(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return deleteGroup?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (deleteGroup != null) {
      return deleteGroup(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return deleteGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return deleteGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (deleteGroup != null) {
      return deleteGroup(this);
    }
    return orElse();
  }
}

abstract class _DeleteGroup implements GroupEvent {
  const factory _DeleteGroup({required final String uid}) = _$DeleteGroupImpl;

  String get uid;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteGroupImplCopyWith<_$DeleteGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MakeAdminImplCopyWith<$Res> {
  factory _$$MakeAdminImplCopyWith(
          _$MakeAdminImpl value, $Res Function(_$MakeAdminImpl) then) =
      __$$MakeAdminImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$MakeAdminImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$MakeAdminImpl>
    implements _$$MakeAdminImplCopyWith<$Res> {
  __$$MakeAdminImplCopyWithImpl(
      _$MakeAdminImpl _value, $Res Function(_$MakeAdminImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$MakeAdminImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MakeAdminImpl implements _MakeAdmin {
  const _$MakeAdminImpl({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'GroupEvent.makeAdmin(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakeAdminImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MakeAdminImplCopyWith<_$MakeAdminImpl> get copyWith =>
      __$$MakeAdminImplCopyWithImpl<_$MakeAdminImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return makeAdmin(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return makeAdmin?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (makeAdmin != null) {
      return makeAdmin(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return makeAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return makeAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (makeAdmin != null) {
      return makeAdmin(this);
    }
    return orElse();
  }
}

abstract class _MakeAdmin implements GroupEvent {
  const factory _MakeAdmin({required final String uid}) = _$MakeAdminImpl;

  String get uid;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MakeAdminImplCopyWith<_$MakeAdminImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAdminImplCopyWith<$Res> {
  factory _$$RemoveAdminImplCopyWith(
          _$RemoveAdminImpl value, $Res Function(_$RemoveAdminImpl) then) =
      __$$RemoveAdminImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$RemoveAdminImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$RemoveAdminImpl>
    implements _$$RemoveAdminImplCopyWith<$Res> {
  __$$RemoveAdminImplCopyWithImpl(
      _$RemoveAdminImpl _value, $Res Function(_$RemoveAdminImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$RemoveAdminImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveAdminImpl implements _RemoveAdmin {
  const _$RemoveAdminImpl({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'GroupEvent.removeAdmin(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveAdminImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveAdminImplCopyWith<_$RemoveAdminImpl> get copyWith =>
      __$$RemoveAdminImplCopyWithImpl<_$RemoveAdminImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return removeAdmin(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return removeAdmin?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (removeAdmin != null) {
      return removeAdmin(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return removeAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return removeAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (removeAdmin != null) {
      return removeAdmin(this);
    }
    return orElse();
  }
}

abstract class _RemoveAdmin implements GroupEvent {
  const factory _RemoveAdmin({required final String uid}) = _$RemoveAdminImpl;

  String get uid;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveAdminImplCopyWith<_$RemoveAdminImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlockUserImplCopyWith<$Res> {
  factory _$$BlockUserImplCopyWith(
          _$BlockUserImpl value, $Res Function(_$BlockUserImpl) then) =
      __$$BlockUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$BlockUserImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$BlockUserImpl>
    implements _$$BlockUserImplCopyWith<$Res> {
  __$$BlockUserImplCopyWithImpl(
      _$BlockUserImpl _value, $Res Function(_$BlockUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$BlockUserImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlockUserImpl implements _BlockUser {
  const _$BlockUserImpl({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'GroupEvent.blockUser(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockUserImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockUserImplCopyWith<_$BlockUserImpl> get copyWith =>
      __$$BlockUserImplCopyWithImpl<_$BlockUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return blockUser(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return blockUser?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (blockUser != null) {
      return blockUser(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return blockUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return blockUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (blockUser != null) {
      return blockUser(this);
    }
    return orElse();
  }
}

abstract class _BlockUser implements GroupEvent {
  const factory _BlockUser({required final String uid}) = _$BlockUserImpl;

  String get uid;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockUserImplCopyWith<_$BlockUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MuteNotificationImplCopyWith<$Res> {
  factory _$$MuteNotificationImplCopyWith(_$MuteNotificationImpl value,
          $Res Function(_$MuteNotificationImpl) then) =
      __$$MuteNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$MuteNotificationImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$MuteNotificationImpl>
    implements _$$MuteNotificationImplCopyWith<$Res> {
  __$$MuteNotificationImplCopyWithImpl(_$MuteNotificationImpl _value,
      $Res Function(_$MuteNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$MuteNotificationImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MuteNotificationImpl implements _MuteNotification {
  const _$MuteNotificationImpl({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'GroupEvent.muteNotification(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuteNotificationImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MuteNotificationImplCopyWith<_$MuteNotificationImpl> get copyWith =>
      __$$MuteNotificationImplCopyWithImpl<_$MuteNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return muteNotification(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return muteNotification?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (muteNotification != null) {
      return muteNotification(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return muteNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return muteNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (muteNotification != null) {
      return muteNotification(this);
    }
    return orElse();
  }
}

abstract class _MuteNotification implements GroupEvent {
  const factory _MuteNotification({required final String uid}) =
      _$MuteNotificationImpl;

  String get uid;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MuteNotificationImplCopyWith<_$MuteNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnmuteNotificationImplCopyWith<$Res> {
  factory _$$UnmuteNotificationImplCopyWith(_$UnmuteNotificationImpl value,
          $Res Function(_$UnmuteNotificationImpl) then) =
      __$$UnmuteNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$UnmuteNotificationImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$UnmuteNotificationImpl>
    implements _$$UnmuteNotificationImplCopyWith<$Res> {
  __$$UnmuteNotificationImplCopyWithImpl(_$UnmuteNotificationImpl _value,
      $Res Function(_$UnmuteNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$UnmuteNotificationImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnmuteNotificationImpl implements _UnmuteNotification {
  const _$UnmuteNotificationImpl({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'GroupEvent.unmuteNotification(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnmuteNotificationImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnmuteNotificationImplCopyWith<_$UnmuteNotificationImpl> get copyWith =>
      __$$UnmuteNotificationImplCopyWithImpl<_$UnmuteNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return unmuteNotification(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return unmuteNotification?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (unmuteNotification != null) {
      return unmuteNotification(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return unmuteNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return unmuteNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (unmuteNotification != null) {
      return unmuteNotification(this);
    }
    return orElse();
  }
}

abstract class _UnmuteNotification implements GroupEvent {
  const factory _UnmuteNotification({required final String uid}) =
      _$UnmuteNotificationImpl;

  String get uid;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnmuteNotificationImplCopyWith<_$UnmuteNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditPermissionImplCopyWith<$Res> {
  factory _$$EditPermissionImplCopyWith(_$EditPermissionImpl value,
          $Res Function(_$EditPermissionImpl) then) =
      __$$EditPermissionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool? memberCanEdit, bool? memberCanAddMember, bool? memberCanMessage});
}

/// @nodoc
class __$$EditPermissionImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$EditPermissionImpl>
    implements _$$EditPermissionImplCopyWith<$Res> {
  __$$EditPermissionImplCopyWithImpl(
      _$EditPermissionImpl _value, $Res Function(_$EditPermissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberCanEdit = freezed,
    Object? memberCanAddMember = freezed,
    Object? memberCanMessage = freezed,
  }) {
    return _then(_$EditPermissionImpl(
      memberCanEdit: freezed == memberCanEdit
          ? _value.memberCanEdit
          : memberCanEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      memberCanAddMember: freezed == memberCanAddMember
          ? _value.memberCanAddMember
          : memberCanAddMember // ignore: cast_nullable_to_non_nullable
              as bool?,
      memberCanMessage: freezed == memberCanMessage
          ? _value.memberCanMessage
          : memberCanMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$EditPermissionImpl implements _EditPermission {
  const _$EditPermissionImpl(
      {this.memberCanEdit = null,
      this.memberCanAddMember = null,
      this.memberCanMessage = null});

  @override
  @JsonKey()
  final bool? memberCanEdit;
  @override
  @JsonKey()
  final bool? memberCanAddMember;
  @override
  @JsonKey()
  final bool? memberCanMessage;

  @override
  String toString() {
    return 'GroupEvent.editPermission(memberCanEdit: $memberCanEdit, memberCanAddMember: $memberCanAddMember, memberCanMessage: $memberCanMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditPermissionImpl &&
            (identical(other.memberCanEdit, memberCanEdit) ||
                other.memberCanEdit == memberCanEdit) &&
            (identical(other.memberCanAddMember, memberCanAddMember) ||
                other.memberCanAddMember == memberCanAddMember) &&
            (identical(other.memberCanMessage, memberCanMessage) ||
                other.memberCanMessage == memberCanMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, memberCanEdit, memberCanAddMember, memberCanMessage);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditPermissionImplCopyWith<_$EditPermissionImpl> get copyWith =>
      __$$EditPermissionImplCopyWithImpl<_$EditPermissionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return editPermission(memberCanEdit, memberCanAddMember, memberCanMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return editPermission?.call(
        memberCanEdit, memberCanAddMember, memberCanMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (editPermission != null) {
      return editPermission(
          memberCanEdit, memberCanAddMember, memberCanMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return editPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return editPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (editPermission != null) {
      return editPermission(this);
    }
    return orElse();
  }
}

abstract class _EditPermission implements GroupEvent {
  const factory _EditPermission(
      {final bool? memberCanEdit,
      final bool? memberCanAddMember,
      final bool? memberCanMessage}) = _$EditPermissionImpl;

  bool? get memberCanEdit;
  bool? get memberCanAddMember;
  bool? get memberCanMessage;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditPermissionImplCopyWith<_$EditPermissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VotePollImplCopyWith<$Res> {
  factory _$$VotePollImplCopyWith(
          _$VotePollImpl value, $Res Function(_$VotePollImpl) then) =
      __$$VotePollImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId, String option, Map<String, dynamic> votes});
}

/// @nodoc
class __$$VotePollImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$VotePollImpl>
    implements _$$VotePollImplCopyWith<$Res> {
  __$$VotePollImplCopyWithImpl(
      _$VotePollImpl _value, $Res Function(_$VotePollImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? option = null,
    Object? votes = null,
  }) {
    return _then(_$VotePollImpl(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
      votes: null == votes
          ? _value._votes
          : votes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$VotePollImpl implements _VotePoll {
  const _$VotePollImpl(
      {required this.messageId,
      required this.option,
      required final Map<String, dynamic> votes})
      : _votes = votes;

  @override
  final String messageId;
  @override
  final String option;
  final Map<String, dynamic> _votes;
  @override
  Map<String, dynamic> get votes {
    if (_votes is EqualUnmodifiableMapView) return _votes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_votes);
  }

  @override
  String toString() {
    return 'GroupEvent.votePoll(messageId: $messageId, option: $option, votes: $votes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VotePollImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.option, option) || other.option == option) &&
            const DeepCollectionEquality().equals(other._votes, _votes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId, option,
      const DeepCollectionEquality().hash(_votes));

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VotePollImplCopyWith<_$VotePollImpl> get copyWith =>
      __$$VotePollImplCopyWithImpl<_$VotePollImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return votePoll(messageId, option, votes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return votePoll?.call(messageId, option, votes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (votePoll != null) {
      return votePoll(messageId, option, votes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return votePoll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return votePoll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (votePoll != null) {
      return votePoll(this);
    }
    return orElse();
  }
}

abstract class _VotePoll implements GroupEvent {
  const factory _VotePoll(
      {required final String messageId,
      required final String option,
      required final Map<String, dynamic> votes}) = _$VotePollImpl;

  String get messageId;
  String get option;
  Map<String, dynamic> get votes;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VotePollImplCopyWith<_$VotePollImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteMessageImplCopyWith<$Res> {
  factory _$$DeleteMessageImplCopyWith(
          _$DeleteMessageImpl value, $Res Function(_$DeleteMessageImpl) then) =
      __$$DeleteMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> messageId});
}

/// @nodoc
class __$$DeleteMessageImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$DeleteMessageImpl>
    implements _$$DeleteMessageImplCopyWith<$Res> {
  __$$DeleteMessageImplCopyWithImpl(
      _$DeleteMessageImpl _value, $Res Function(_$DeleteMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$DeleteMessageImpl(
      messageId: null == messageId
          ? _value._messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$DeleteMessageImpl implements _DeleteMessage {
  const _$DeleteMessageImpl({required final List<String> messageId})
      : _messageId = messageId;

  final List<String> _messageId;
  @override
  List<String> get messageId {
    if (_messageId is EqualUnmodifiableListView) return _messageId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messageId);
  }

  @override
  String toString() {
    return 'GroupEvent.deleteMessage(messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMessageImpl &&
            const DeepCollectionEquality()
                .equals(other._messageId, _messageId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messageId));

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      __$$DeleteMessageImplCopyWithImpl<_$DeleteMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return deleteMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return deleteMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return deleteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return deleteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class _DeleteMessage implements GroupEvent {
  const factory _DeleteMessage({required final List<String> messageId}) =
      _$DeleteMessageImpl;

  List<String> get messageId;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteChatForMeImplCopyWith<$Res> {
  factory _$$DeleteChatForMeImplCopyWith(_$DeleteChatForMeImpl value,
          $Res Function(_$DeleteChatForMeImpl) then) =
      __$$DeleteChatForMeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> messageIds});
}

/// @nodoc
class __$$DeleteChatForMeImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$DeleteChatForMeImpl>
    implements _$$DeleteChatForMeImplCopyWith<$Res> {
  __$$DeleteChatForMeImplCopyWithImpl(
      _$DeleteChatForMeImpl _value, $Res Function(_$DeleteChatForMeImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageIds = null,
  }) {
    return _then(_$DeleteChatForMeImpl(
      messageIds: null == messageIds
          ? _value._messageIds
          : messageIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$DeleteChatForMeImpl implements _DeleteChatForMe {
  const _$DeleteChatForMeImpl({required final List<String> messageIds})
      : _messageIds = messageIds;

  final List<String> _messageIds;
  @override
  List<String> get messageIds {
    if (_messageIds is EqualUnmodifiableListView) return _messageIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messageIds);
  }

  @override
  String toString() {
    return 'GroupEvent.deleteChatForMe(messageIds: $messageIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteChatForMeImpl &&
            const DeepCollectionEquality()
                .equals(other._messageIds, _messageIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messageIds));

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteChatForMeImplCopyWith<_$DeleteChatForMeImpl> get copyWith =>
      __$$DeleteChatForMeImplCopyWithImpl<_$DeleteChatForMeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return deleteChatForMe(messageIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return deleteChatForMe?.call(messageIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (deleteChatForMe != null) {
      return deleteChatForMe(messageIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return deleteChatForMe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return deleteChatForMe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (deleteChatForMe != null) {
      return deleteChatForMe(this);
    }
    return orElse();
  }
}

abstract class _DeleteChatForMe implements GroupEvent {
  const factory _DeleteChatForMe({required final List<String> messageIds}) =
      _$DeleteChatForMeImpl;

  List<String> get messageIds;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteChatForMeImplCopyWith<_$DeleteChatForMeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditStatusToTypingImplCopyWith<$Res> {
  factory _$$EditStatusToTypingImplCopyWith(_$EditStatusToTypingImpl value,
          $Res Function(_$EditStatusToTypingImpl) then) =
      __$$EditStatusToTypingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isTyping});
}

/// @nodoc
class __$$EditStatusToTypingImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$EditStatusToTypingImpl>
    implements _$$EditStatusToTypingImplCopyWith<$Res> {
  __$$EditStatusToTypingImplCopyWithImpl(_$EditStatusToTypingImpl _value,
      $Res Function(_$EditStatusToTypingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTyping = null,
  }) {
    return _then(_$EditStatusToTypingImpl(
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EditStatusToTypingImpl implements _EditStatusToTyping {
  const _$EditStatusToTypingImpl({required this.isTyping});

  @override
  final bool isTyping;

  @override
  String toString() {
    return 'GroupEvent.editStatusToTyping(isTyping: $isTyping)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditStatusToTypingImpl &&
            (identical(other.isTyping, isTyping) ||
                other.isTyping == isTyping));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTyping);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditStatusToTypingImplCopyWith<_$EditStatusToTypingImpl> get copyWith =>
      __$$EditStatusToTypingImplCopyWithImpl<_$EditStatusToTypingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return editStatusToTyping(isTyping);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return editStatusToTyping?.call(isTyping);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (editStatusToTyping != null) {
      return editStatusToTyping(isTyping);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return editStatusToTyping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return editStatusToTyping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (editStatusToTyping != null) {
      return editStatusToTyping(this);
    }
    return orElse();
  }
}

abstract class _EditStatusToTyping implements GroupEvent {
  const factory _EditStatusToTyping({required final bool isTyping}) =
      _$EditStatusToTypingImpl;

  bool get isTyping;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditStatusToTypingImplCopyWith<_$EditStatusToTypingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMessageModelImplCopyWith<$Res> {
  factory _$$LoadMessageModelImplCopyWith(_$LoadMessageModelImpl value,
          $Res Function(_$LoadMessageModelImpl) then) =
      __$$LoadMessageModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QueryDocumentSnapshot<Map<String, dynamic>>> docs});
}

/// @nodoc
class __$$LoadMessageModelImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$LoadMessageModelImpl>
    implements _$$LoadMessageModelImplCopyWith<$Res> {
  __$$LoadMessageModelImplCopyWithImpl(_$LoadMessageModelImpl _value,
      $Res Function(_$LoadMessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = null,
  }) {
    return _then(_$LoadMessageModelImpl(
      docs: null == docs
          ? _value._docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<QueryDocumentSnapshot<Map<String, dynamic>>>,
    ));
  }
}

/// @nodoc

class _$LoadMessageModelImpl implements _LoadMessageModel {
  const _$LoadMessageModelImpl(
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
    return 'GroupEvent.loadMessageModel(docs: $docs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMessageModelImpl &&
            const DeepCollectionEquality().equals(other._docs, _docs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_docs));

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMessageModelImplCopyWith<_$LoadMessageModelImpl> get copyWith =>
      __$$LoadMessageModelImplCopyWithImpl<_$LoadMessageModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return loadMessageModel(docs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return loadMessageModel?.call(docs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (loadMessageModel != null) {
      return loadMessageModel(docs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return loadMessageModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return loadMessageModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (loadMessageModel != null) {
      return loadMessageModel(this);
    }
    return orElse();
  }
}

abstract class _LoadMessageModel implements GroupEvent {
  const factory _LoadMessageModel(
      {required final List<QueryDocumentSnapshot<Map<String, dynamic>>>
          docs}) = _$LoadMessageModelImpl;

  List<QueryDocumentSnapshot<Map<String, dynamic>>> get docs;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMessageModelImplCopyWith<_$LoadMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReloadGroupImplCopyWith<$Res> {
  factory _$$ReloadGroupImplCopyWith(
          _$ReloadGroupImpl value, $Res Function(_$ReloadGroupImpl) then) =
      __$$ReloadGroupImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReloadGroupImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$ReloadGroupImpl>
    implements _$$ReloadGroupImplCopyWith<$Res> {
  __$$ReloadGroupImplCopyWithImpl(
      _$ReloadGroupImpl _value, $Res Function(_$ReloadGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReloadGroupImpl implements _ReloadGroup {
  const _$ReloadGroupImpl();

  @override
  String toString() {
    return 'GroupEvent.reloadGroup()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReloadGroupImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return reloadGroup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return reloadGroup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (reloadGroup != null) {
      return reloadGroup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return reloadGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return reloadGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (reloadGroup != null) {
      return reloadGroup(this);
    }
    return orElse();
  }
}

abstract class _ReloadGroup implements GroupEvent {
  const factory _ReloadGroup() = _$ReloadGroupImpl;
}

/// @nodoc
abstract class _$$LoadGroupInfoImplCopyWith<$Res> {
  factory _$$LoadGroupInfoImplCopyWith(
          _$LoadGroupInfoImpl value, $Res Function(_$LoadGroupInfoImpl) then) =
      __$$LoadGroupInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadGroupInfoImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$LoadGroupInfoImpl>
    implements _$$LoadGroupInfoImplCopyWith<$Res> {
  __$$LoadGroupInfoImplCopyWithImpl(
      _$LoadGroupInfoImpl _value, $Res Function(_$LoadGroupInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadGroupInfoImpl implements _LoadGroupInfo {
  const _$LoadGroupInfoImpl();

  @override
  String toString() {
    return 'GroupEvent.loadGroupInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadGroupInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return loadGroupInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return loadGroupInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (loadGroupInfo != null) {
      return loadGroupInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return loadGroupInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return loadGroupInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (loadGroupInfo != null) {
      return loadGroupInfo(this);
    }
    return orElse();
  }
}

abstract class _LoadGroupInfo implements GroupEvent {
  const factory _LoadGroupInfo() = _$LoadGroupInfoImpl;
}

/// @nodoc
abstract class _$$CreateGroupLoadImplCopyWith<$Res> {
  factory _$$CreateGroupLoadImplCopyWith(_$CreateGroupLoadImpl value,
          $Res Function(_$CreateGroupLoadImpl) then) =
      __$$CreateGroupLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String groupName,
      String groupDescription,
      String groupImagePath,
      bool memberCanEdit,
      bool memberCanAddMember,
      bool memberCanMessage});
}

/// @nodoc
class __$$CreateGroupLoadImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$CreateGroupLoadImpl>
    implements _$$CreateGroupLoadImplCopyWith<$Res> {
  __$$CreateGroupLoadImplCopyWithImpl(
      _$CreateGroupLoadImpl _value, $Res Function(_$CreateGroupLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
    Object? groupDescription = null,
    Object? groupImagePath = null,
    Object? memberCanEdit = null,
    Object? memberCanAddMember = null,
    Object? memberCanMessage = null,
  }) {
    return _then(_$CreateGroupLoadImpl(
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      groupDescription: null == groupDescription
          ? _value.groupDescription
          : groupDescription // ignore: cast_nullable_to_non_nullable
              as String,
      groupImagePath: null == groupImagePath
          ? _value.groupImagePath
          : groupImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      memberCanEdit: null == memberCanEdit
          ? _value.memberCanEdit
          : memberCanEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      memberCanAddMember: null == memberCanAddMember
          ? _value.memberCanAddMember
          : memberCanAddMember // ignore: cast_nullable_to_non_nullable
              as bool,
      memberCanMessage: null == memberCanMessage
          ? _value.memberCanMessage
          : memberCanMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CreateGroupLoadImpl implements _CreateGroupLoad {
  const _$CreateGroupLoadImpl(
      {required this.groupName,
      required this.groupDescription,
      required this.groupImagePath,
      required this.memberCanEdit,
      required this.memberCanAddMember,
      required this.memberCanMessage});

  @override
  final String groupName;
  @override
  final String groupDescription;
  @override
  final String groupImagePath;
  @override
  final bool memberCanEdit;
  @override
  final bool memberCanAddMember;
  @override
  final bool memberCanMessage;

  @override
  String toString() {
    return 'GroupEvent.createGroupLoad(groupName: $groupName, groupDescription: $groupDescription, groupImagePath: $groupImagePath, memberCanEdit: $memberCanEdit, memberCanAddMember: $memberCanAddMember, memberCanMessage: $memberCanMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGroupLoadImpl &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.groupDescription, groupDescription) ||
                other.groupDescription == groupDescription) &&
            (identical(other.groupImagePath, groupImagePath) ||
                other.groupImagePath == groupImagePath) &&
            (identical(other.memberCanEdit, memberCanEdit) ||
                other.memberCanEdit == memberCanEdit) &&
            (identical(other.memberCanAddMember, memberCanAddMember) ||
                other.memberCanAddMember == memberCanAddMember) &&
            (identical(other.memberCanMessage, memberCanMessage) ||
                other.memberCanMessage == memberCanMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupName, groupDescription,
      groupImagePath, memberCanEdit, memberCanAddMember, memberCanMessage);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroupLoadImplCopyWith<_$CreateGroupLoadImpl> get copyWith =>
      __$$CreateGroupLoadImplCopyWithImpl<_$CreateGroupLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return createGroupLoad(groupName, groupDescription, groupImagePath,
        memberCanEdit, memberCanAddMember, memberCanMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return createGroupLoad?.call(groupName, groupDescription, groupImagePath,
        memberCanEdit, memberCanAddMember, memberCanMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (createGroupLoad != null) {
      return createGroupLoad(groupName, groupDescription, groupImagePath,
          memberCanEdit, memberCanAddMember, memberCanMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return createGroupLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return createGroupLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (createGroupLoad != null) {
      return createGroupLoad(this);
    }
    return orElse();
  }
}

abstract class _CreateGroupLoad implements GroupEvent {
  const factory _CreateGroupLoad(
      {required final String groupName,
      required final String groupDescription,
      required final String groupImagePath,
      required final bool memberCanEdit,
      required final bool memberCanAddMember,
      required final bool memberCanMessage}) = _$CreateGroupLoadImpl;

  String get groupName;
  String get groupDescription;
  String get groupImagePath;
  bool get memberCanEdit;
  bool get memberCanAddMember;
  bool get memberCanMessage;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGroupLoadImplCopyWith<_$CreateGroupLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateGroupImplCopyWith<$Res> {
  factory _$$CreateGroupImplCopyWith(
          _$CreateGroupImpl value, $Res Function(_$CreateGroupImpl) then) =
      __$$CreateGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> participants});
}

/// @nodoc
class __$$CreateGroupImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$CreateGroupImpl>
    implements _$$CreateGroupImplCopyWith<$Res> {
  __$$CreateGroupImplCopyWithImpl(
      _$CreateGroupImpl _value, $Res Function(_$CreateGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participants = null,
  }) {
    return _then(_$CreateGroupImpl(
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CreateGroupImpl implements _CreateGroup {
  const _$CreateGroupImpl({required final List<String> participants})
      : _participants = participants;

  final List<String> _participants;
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  String toString() {
    return 'GroupEvent.createGroup(participants: $participants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGroupImpl &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_participants));

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroupImplCopyWith<_$CreateGroupImpl> get copyWith =>
      __$$CreateGroupImplCopyWithImpl<_$CreateGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return createGroup(participants);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return createGroup?.call(participants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(participants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return createGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return createGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(this);
    }
    return orElse();
  }
}

abstract class _CreateGroup implements GroupEvent {
  const factory _CreateGroup({required final List<String> participants}) =
      _$CreateGroupImpl;

  List<String> get participants;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGroupImplCopyWith<_$CreateGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddMemberImplCopyWith<$Res> {
  factory _$$AddMemberImplCopyWith(
          _$AddMemberImpl value, $Res Function(_$AddMemberImpl) then) =
      __$$AddMemberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserModels> members});
}

/// @nodoc
class __$$AddMemberImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$AddMemberImpl>
    implements _$$AddMemberImplCopyWith<$Res> {
  __$$AddMemberImplCopyWithImpl(
      _$AddMemberImpl _value, $Res Function(_$AddMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
  }) {
    return _then(_$AddMemberImpl(
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<UserModels>,
    ));
  }
}

/// @nodoc

class _$AddMemberImpl implements _AddMember {
  const _$AddMemberImpl({required final List<UserModels> members})
      : _members = members;

  final List<UserModels> _members;
  @override
  List<UserModels> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'GroupEvent.addMember(members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMemberImpl &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_members));

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMemberImplCopyWith<_$AddMemberImpl> get copyWith =>
      __$$AddMemberImplCopyWithImpl<_$AddMemberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String uid) kickUser,
    required TResult Function() exitGroup,
    required TResult Function(String uid) deleteGroup,
    required TResult Function(String uid) makeAdmin,
    required TResult Function(String uid) removeAdmin,
    required TResult Function(String uid) blockUser,
    required TResult Function(String uid) muteNotification,
    required TResult Function(String uid) unmuteNotification,
    required TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)
        editPermission,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(List<String> messageId) deleteMessage,
    required TResult Function(List<String> messageIds) deleteChatForMe,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadMessageModel,
    required TResult Function() reloadGroup,
    required TResult Function() loadGroupInfo,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<UserModels> members) addMember,
  }) {
    return addMember(members);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String uid)? kickUser,
    TResult? Function()? exitGroup,
    TResult? Function(String uid)? deleteGroup,
    TResult? Function(String uid)? makeAdmin,
    TResult? Function(String uid)? removeAdmin,
    TResult? Function(String uid)? blockUser,
    TResult? Function(String uid)? muteNotification,
    TResult? Function(String uid)? unmuteNotification,
    TResult? Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(List<String> messageId)? deleteMessage,
    TResult? Function(List<String> messageIds)? deleteChatForMe,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult? Function()? reloadGroup,
    TResult? Function()? loadGroupInfo,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<UserModels> members)? addMember,
  }) {
    return addMember?.call(members);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String uid)? kickUser,
    TResult Function()? exitGroup,
    TResult Function(String uid)? deleteGroup,
    TResult Function(String uid)? makeAdmin,
    TResult Function(String uid)? removeAdmin,
    TResult Function(String uid)? blockUser,
    TResult Function(String uid)? muteNotification,
    TResult Function(String uid)? unmuteNotification,
    TResult Function(bool? memberCanEdit, bool? memberCanAddMember,
            bool? memberCanMessage)?
        editPermission,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(List<String> messageId)? deleteMessage,
    TResult Function(List<String> messageIds)? deleteChatForMe,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadMessageModel,
    TResult Function()? reloadGroup,
    TResult Function()? loadGroupInfo,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<UserModels> members)? addMember,
    required TResult orElse(),
  }) {
    if (addMember != null) {
      return addMember(members);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_KickUser value) kickUser,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_MakeAdmin value) makeAdmin,
    required TResult Function(_RemoveAdmin value) removeAdmin,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_MuteNotification value) muteNotification,
    required TResult Function(_UnmuteNotification value) unmuteNotification,
    required TResult Function(_EditPermission value) editPermission,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteChatForMe value) deleteChatForMe,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_LoadMessageModel value) loadMessageModel,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_LoadGroupInfo value) loadGroupInfo,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return addMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_KickUser value)? kickUser,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_MakeAdmin value)? makeAdmin,
    TResult? Function(_RemoveAdmin value)? removeAdmin,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_MuteNotification value)? muteNotification,
    TResult? Function(_UnmuteNotification value)? unmuteNotification,
    TResult? Function(_EditPermission value)? editPermission,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_LoadMessageModel value)? loadMessageModel,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return addMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_KickUser value)? kickUser,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_MakeAdmin value)? makeAdmin,
    TResult Function(_RemoveAdmin value)? removeAdmin,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_MuteNotification value)? muteNotification,
    TResult Function(_UnmuteNotification value)? unmuteNotification,
    TResult Function(_EditPermission value)? editPermission,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteChatForMe value)? deleteChatForMe,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_LoadMessageModel value)? loadMessageModel,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_LoadGroupInfo value)? loadGroupInfo,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (addMember != null) {
      return addMember(this);
    }
    return orElse();
  }
}

abstract class _AddMember implements GroupEvent {
  const factory _AddMember({required final List<UserModels> members}) =
      _$AddMemberImpl;

  List<UserModels> get members;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddMemberImplCopyWith<_$AddMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage,
            List<UserModels>? contacts,
            List<String> selectedContacts)
        createGroupData,
    required TResult Function(
            ChatModel? groupData,
            Map<String, UserModels>? groupMembers,
            Map<String, UserModels> allGroupMembers,
            Map<String, UserModels>? blockedGroupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex,
            List<MessageModel> messages,
            bool isLoading,
            bool inputLoading)
        groupData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage,
            List<UserModels>? contacts,
            List<String> selectedContacts)?
        createGroupData,
    TResult? Function(
            ChatModel? groupData,
            Map<String, UserModels>? groupMembers,
            Map<String, UserModels> allGroupMembers,
            Map<String, UserModels>? blockedGroupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex,
            List<MessageModel> messages,
            bool isLoading,
            bool inputLoading)?
        groupData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage,
            List<UserModels>? contacts,
            List<String> selectedContacts)?
        createGroupData,
    TResult Function(
            ChatModel? groupData,
            Map<String, UserModels>? groupMembers,
            Map<String, UserModels> allGroupMembers,
            Map<String, UserModels>? blockedGroupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex,
            List<MessageModel> messages,
            bool isLoading,
            bool inputLoading)?
        groupData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroupData value) createGroupData,
    required TResult Function(GroupData value) groupData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroupData value)? createGroupData,
    TResult? Function(GroupData value)? groupData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroupData value)? createGroupData,
    TResult Function(GroupData value)? groupData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupStateCopyWith<$Res> {
  factory $GroupStateCopyWith(
          GroupState value, $Res Function(GroupState) then) =
      _$GroupStateCopyWithImpl<$Res, GroupState>;
}

/// @nodoc
class _$GroupStateCopyWithImpl<$Res, $Val extends GroupState>
    implements $GroupStateCopyWith<$Res> {
  _$GroupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CreateGroupDataImplCopyWith<$Res> {
  factory _$$CreateGroupDataImplCopyWith(_$CreateGroupDataImpl value,
          $Res Function(_$CreateGroupDataImpl) then) =
      __$$CreateGroupDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String groupName,
      String groupDescription,
      String groupImagePath,
      bool memberCanEdit,
      bool memberCanAddMember,
      bool memberCanMessage,
      List<UserModels>? contacts,
      List<String> selectedContacts});
}

/// @nodoc
class __$$CreateGroupDataImplCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$CreateGroupDataImpl>
    implements _$$CreateGroupDataImplCopyWith<$Res> {
  __$$CreateGroupDataImplCopyWithImpl(
      _$CreateGroupDataImpl _value, $Res Function(_$CreateGroupDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
    Object? groupDescription = null,
    Object? groupImagePath = null,
    Object? memberCanEdit = null,
    Object? memberCanAddMember = null,
    Object? memberCanMessage = null,
    Object? contacts = freezed,
    Object? selectedContacts = null,
  }) {
    return _then(_$CreateGroupDataImpl(
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      groupDescription: null == groupDescription
          ? _value.groupDescription
          : groupDescription // ignore: cast_nullable_to_non_nullable
              as String,
      groupImagePath: null == groupImagePath
          ? _value.groupImagePath
          : groupImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      memberCanEdit: null == memberCanEdit
          ? _value.memberCanEdit
          : memberCanEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      memberCanAddMember: null == memberCanAddMember
          ? _value.memberCanAddMember
          : memberCanAddMember // ignore: cast_nullable_to_non_nullable
              as bool,
      memberCanMessage: null == memberCanMessage
          ? _value.memberCanMessage
          : memberCanMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      contacts: freezed == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<UserModels>?,
      selectedContacts: null == selectedContacts
          ? _value._selectedContacts
          : selectedContacts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CreateGroupDataImpl implements _CreateGroupData {
  const _$CreateGroupDataImpl(
      {required this.groupName,
      required this.groupDescription,
      required this.groupImagePath,
      required this.memberCanEdit,
      required this.memberCanAddMember,
      required this.memberCanMessage,
      final List<UserModels>? contacts = null,
      final List<String> selectedContacts = const []})
      : _contacts = contacts,
        _selectedContacts = selectedContacts;

  @override
  final String groupName;
  @override
  final String groupDescription;
  @override
  final String groupImagePath;
  @override
  final bool memberCanEdit;
  @override
  final bool memberCanAddMember;
  @override
  final bool memberCanMessage;
  final List<UserModels>? _contacts;
  @override
  @JsonKey()
  List<UserModels>? get contacts {
    final value = _contacts;
    if (value == null) return null;
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String> _selectedContacts;
  @override
  @JsonKey()
  List<String> get selectedContacts {
    if (_selectedContacts is EqualUnmodifiableListView)
      return _selectedContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedContacts);
  }

  @override
  String toString() {
    return 'GroupState.createGroupData(groupName: $groupName, groupDescription: $groupDescription, groupImagePath: $groupImagePath, memberCanEdit: $memberCanEdit, memberCanAddMember: $memberCanAddMember, memberCanMessage: $memberCanMessage, contacts: $contacts, selectedContacts: $selectedContacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGroupDataImpl &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.groupDescription, groupDescription) ||
                other.groupDescription == groupDescription) &&
            (identical(other.groupImagePath, groupImagePath) ||
                other.groupImagePath == groupImagePath) &&
            (identical(other.memberCanEdit, memberCanEdit) ||
                other.memberCanEdit == memberCanEdit) &&
            (identical(other.memberCanAddMember, memberCanAddMember) ||
                other.memberCanAddMember == memberCanAddMember) &&
            (identical(other.memberCanMessage, memberCanMessage) ||
                other.memberCanMessage == memberCanMessage) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            const DeepCollectionEquality()
                .equals(other._selectedContacts, _selectedContacts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupName,
      groupDescription,
      groupImagePath,
      memberCanEdit,
      memberCanAddMember,
      memberCanMessage,
      const DeepCollectionEquality().hash(_contacts),
      const DeepCollectionEquality().hash(_selectedContacts));

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroupDataImplCopyWith<_$CreateGroupDataImpl> get copyWith =>
      __$$CreateGroupDataImplCopyWithImpl<_$CreateGroupDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage,
            List<UserModels>? contacts,
            List<String> selectedContacts)
        createGroupData,
    required TResult Function(
            ChatModel? groupData,
            Map<String, UserModels>? groupMembers,
            Map<String, UserModels> allGroupMembers,
            Map<String, UserModels>? blockedGroupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex,
            List<MessageModel> messages,
            bool isLoading,
            bool inputLoading)
        groupData,
  }) {
    return createGroupData(
        groupName,
        groupDescription,
        groupImagePath,
        memberCanEdit,
        memberCanAddMember,
        memberCanMessage,
        contacts,
        selectedContacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage,
            List<UserModels>? contacts,
            List<String> selectedContacts)?
        createGroupData,
    TResult? Function(
            ChatModel? groupData,
            Map<String, UserModels>? groupMembers,
            Map<String, UserModels> allGroupMembers,
            Map<String, UserModels>? blockedGroupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex,
            List<MessageModel> messages,
            bool isLoading,
            bool inputLoading)?
        groupData,
  }) {
    return createGroupData?.call(
        groupName,
        groupDescription,
        groupImagePath,
        memberCanEdit,
        memberCanAddMember,
        memberCanMessage,
        contacts,
        selectedContacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage,
            List<UserModels>? contacts,
            List<String> selectedContacts)?
        createGroupData,
    TResult Function(
            ChatModel? groupData,
            Map<String, UserModels>? groupMembers,
            Map<String, UserModels> allGroupMembers,
            Map<String, UserModels>? blockedGroupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex,
            List<MessageModel> messages,
            bool isLoading,
            bool inputLoading)?
        groupData,
    required TResult orElse(),
  }) {
    if (createGroupData != null) {
      return createGroupData(
          groupName,
          groupDescription,
          groupImagePath,
          memberCanEdit,
          memberCanAddMember,
          memberCanMessage,
          contacts,
          selectedContacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroupData value) createGroupData,
    required TResult Function(GroupData value) groupData,
  }) {
    return createGroupData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroupData value)? createGroupData,
    TResult? Function(GroupData value)? groupData,
  }) {
    return createGroupData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroupData value)? createGroupData,
    TResult Function(GroupData value)? groupData,
    required TResult orElse(),
  }) {
    if (createGroupData != null) {
      return createGroupData(this);
    }
    return orElse();
  }
}

abstract class _CreateGroupData implements GroupState {
  const factory _CreateGroupData(
      {required final String groupName,
      required final String groupDescription,
      required final String groupImagePath,
      required final bool memberCanEdit,
      required final bool memberCanAddMember,
      required final bool memberCanMessage,
      final List<UserModels>? contacts,
      final List<String> selectedContacts}) = _$CreateGroupDataImpl;

  String get groupName;
  String get groupDescription;
  String get groupImagePath;
  bool get memberCanEdit;
  bool get memberCanAddMember;
  bool get memberCanMessage;
  List<UserModels>? get contacts;
  List<String> get selectedContacts;

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGroupDataImplCopyWith<_$CreateGroupDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupDataImplCopyWith<$Res> {
  factory _$$GroupDataImplCopyWith(
          _$GroupDataImpl value, $Res Function(_$GroupDataImpl) then) =
      __$$GroupDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ChatModel? groupData,
      Map<String, UserModels>? groupMembers,
      Map<String, UserModels> allGroupMembers,
      Map<String, UserModels>? blockedGroupMembers,
      Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
      int wallpaperIndex,
      List<MessageModel> messages,
      bool isLoading,
      bool inputLoading});
}

/// @nodoc
class __$$GroupDataImplCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$GroupDataImpl>
    implements _$$GroupDataImplCopyWith<$Res> {
  __$$GroupDataImplCopyWithImpl(
      _$GroupDataImpl _value, $Res Function(_$GroupDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupData = freezed,
    Object? groupMembers = freezed,
    Object? allGroupMembers = null,
    Object? blockedGroupMembers = freezed,
    Object? messageData = freezed,
    Object? wallpaperIndex = null,
    Object? messages = null,
    Object? isLoading = null,
    Object? inputLoading = null,
  }) {
    return _then(_$GroupDataImpl(
      groupData: freezed == groupData
          ? _value.groupData
          : groupData // ignore: cast_nullable_to_non_nullable
              as ChatModel?,
      groupMembers: freezed == groupMembers
          ? _value._groupMembers
          : groupMembers // ignore: cast_nullable_to_non_nullable
              as Map<String, UserModels>?,
      allGroupMembers: null == allGroupMembers
          ? _value._allGroupMembers
          : allGroupMembers // ignore: cast_nullable_to_non_nullable
              as Map<String, UserModels>,
      blockedGroupMembers: freezed == blockedGroupMembers
          ? _value._blockedGroupMembers
          : blockedGroupMembers // ignore: cast_nullable_to_non_nullable
              as Map<String, UserModels>?,
      messageData: freezed == messageData
          ? _value.messageData
          : messageData // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Map<String, dynamic>>>?,
      wallpaperIndex: null == wallpaperIndex
          ? _value.wallpaperIndex
          : wallpaperIndex // ignore: cast_nullable_to_non_nullable
              as int,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      inputLoading: null == inputLoading
          ? _value.inputLoading
          : inputLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GroupDataImpl implements GroupData {
  const _$GroupDataImpl(
      {this.groupData = null,
      final Map<String, UserModels>? groupMembers = null,
      final Map<String, UserModels> allGroupMembers = const {},
      final Map<String, UserModels>? blockedGroupMembers = null,
      this.messageData = null,
      this.wallpaperIndex = 0,
      final List<MessageModel> messages = const [],
      this.isLoading = false,
      this.inputLoading = false})
      : _groupMembers = groupMembers,
        _allGroupMembers = allGroupMembers,
        _blockedGroupMembers = blockedGroupMembers,
        _messages = messages;

  @override
  @JsonKey()
  final ChatModel? groupData;
  final Map<String, UserModels>? _groupMembers;
  @override
  @JsonKey()
  Map<String, UserModels>? get groupMembers {
    final value = _groupMembers;
    if (value == null) return null;
    if (_groupMembers is EqualUnmodifiableMapView) return _groupMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

//it current available members
  final Map<String, UserModels> _allGroupMembers;
//it current available members
  @override
  @JsonKey()
  Map<String, UserModels> get allGroupMembers {
    if (_allGroupMembers is EqualUnmodifiableMapView) return _allGroupMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_allGroupMembers);
  }

  final Map<String, UserModels>? _blockedGroupMembers;
  @override
  @JsonKey()
  Map<String, UserModels>? get blockedGroupMembers {
    final value = _blockedGroupMembers;
    if (value == null) return null;
    if (_blockedGroupMembers is EqualUnmodifiableMapView)
      return _blockedGroupMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final Stream<QuerySnapshot<Map<String, dynamic>>>? messageData;
  @override
  @JsonKey()
  final int wallpaperIndex;
  final List<MessageModel> _messages;
  @override
  @JsonKey()
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool inputLoading;

  @override
  String toString() {
    return 'GroupState.groupData(groupData: $groupData, groupMembers: $groupMembers, allGroupMembers: $allGroupMembers, blockedGroupMembers: $blockedGroupMembers, messageData: $messageData, wallpaperIndex: $wallpaperIndex, messages: $messages, isLoading: $isLoading, inputLoading: $inputLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupDataImpl &&
            (identical(other.groupData, groupData) ||
                other.groupData == groupData) &&
            const DeepCollectionEquality()
                .equals(other._groupMembers, _groupMembers) &&
            const DeepCollectionEquality()
                .equals(other._allGroupMembers, _allGroupMembers) &&
            const DeepCollectionEquality()
                .equals(other._blockedGroupMembers, _blockedGroupMembers) &&
            (identical(other.messageData, messageData) ||
                other.messageData == messageData) &&
            (identical(other.wallpaperIndex, wallpaperIndex) ||
                other.wallpaperIndex == wallpaperIndex) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.inputLoading, inputLoading) ||
                other.inputLoading == inputLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupData,
      const DeepCollectionEquality().hash(_groupMembers),
      const DeepCollectionEquality().hash(_allGroupMembers),
      const DeepCollectionEquality().hash(_blockedGroupMembers),
      messageData,
      wallpaperIndex,
      const DeepCollectionEquality().hash(_messages),
      isLoading,
      inputLoading);

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupDataImplCopyWith<_$GroupDataImpl> get copyWith =>
      __$$GroupDataImplCopyWithImpl<_$GroupDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage,
            List<UserModels>? contacts,
            List<String> selectedContacts)
        createGroupData,
    required TResult Function(
            ChatModel? groupData,
            Map<String, UserModels>? groupMembers,
            Map<String, UserModels> allGroupMembers,
            Map<String, UserModels>? blockedGroupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex,
            List<MessageModel> messages,
            bool isLoading,
            bool inputLoading)
        groupData,
  }) {
    return groupData(
        this.groupData,
        groupMembers,
        allGroupMembers,
        blockedGroupMembers,
        messageData,
        wallpaperIndex,
        messages,
        isLoading,
        inputLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage,
            List<UserModels>? contacts,
            List<String> selectedContacts)?
        createGroupData,
    TResult? Function(
            ChatModel? groupData,
            Map<String, UserModels>? groupMembers,
            Map<String, UserModels> allGroupMembers,
            Map<String, UserModels>? blockedGroupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex,
            List<MessageModel> messages,
            bool isLoading,
            bool inputLoading)?
        groupData,
  }) {
    return groupData?.call(
        this.groupData,
        groupMembers,
        allGroupMembers,
        blockedGroupMembers,
        messageData,
        wallpaperIndex,
        messages,
        isLoading,
        inputLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage,
            List<UserModels>? contacts,
            List<String> selectedContacts)?
        createGroupData,
    TResult Function(
            ChatModel? groupData,
            Map<String, UserModels>? groupMembers,
            Map<String, UserModels> allGroupMembers,
            Map<String, UserModels>? blockedGroupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex,
            List<MessageModel> messages,
            bool isLoading,
            bool inputLoading)?
        groupData,
    required TResult orElse(),
  }) {
    if (groupData != null) {
      return groupData(
          this.groupData,
          groupMembers,
          allGroupMembers,
          blockedGroupMembers,
          messageData,
          wallpaperIndex,
          messages,
          isLoading,
          inputLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroupData value) createGroupData,
    required TResult Function(GroupData value) groupData,
  }) {
    return groupData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroupData value)? createGroupData,
    TResult? Function(GroupData value)? groupData,
  }) {
    return groupData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroupData value)? createGroupData,
    TResult Function(GroupData value)? groupData,
    required TResult orElse(),
  }) {
    if (groupData != null) {
      return groupData(this);
    }
    return orElse();
  }
}

abstract class GroupData implements GroupState {
  const factory GroupData(
      {final ChatModel? groupData,
      final Map<String, UserModels>? groupMembers,
      final Map<String, UserModels> allGroupMembers,
      final Map<String, UserModels>? blockedGroupMembers,
      final Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
      final int wallpaperIndex,
      final List<MessageModel> messages,
      final bool isLoading,
      final bool inputLoading}) = _$GroupDataImpl;

  ChatModel? get groupData;
  Map<String, UserModels>? get groupMembers; //it current available members
  Map<String, UserModels> get allGroupMembers;
  Map<String, UserModels>? get blockedGroupMembers;
  Stream<QuerySnapshot<Map<String, dynamic>>>? get messageData;
  int get wallpaperIndex;
  List<MessageModel> get messages;
  bool get isLoading;
  bool get inputLoading;

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupDataImplCopyWith<_$GroupDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
