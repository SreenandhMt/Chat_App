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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
  $Res call({Map<String, dynamic> chat});
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
          ? _value._chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$LoadDataImpl implements _LoadData {
  const _$LoadDataImpl({required final Map<String, dynamic> chat})
      : _chat = chat;

  final Map<String, dynamic> _chat;
  @override
  Map<String, dynamic> get chat {
    if (_chat is EqualUnmodifiableMapView) return _chat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_chat);
  }

  @override
  String toString() {
    return 'GroupEvent.loadData(chat: $chat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDataImpl &&
            const DeepCollectionEquality().equals(other._chat, _chat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chat));

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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return loadData(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return loadData?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
  const factory _LoadData({required final Map<String, dynamic> chat}) =
      _$LoadDataImpl;

  Map<String, dynamic> get chat;

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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return sendImage(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return sendImage?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return addReaction(messageId, emoji);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return addReaction?.call(messageId, emoji);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return sendAudioFile(file, waveList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return sendAudioFile?.call(file, waveList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return sendVideoFile(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return sendVideoFile?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return sendLink(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return sendLink?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return sendDocument(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return sendDocument?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return createPoll(question, options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return createPoll?.call(question, options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return sendSticker(stickerPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return sendSticker?.call(stickerPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return votePoll(messageId, option, votes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return votePoll?.call(messageId, option, votes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
  $Res call({String messageId});
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
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteMessageImpl implements _DeleteMessage {
  const _$DeleteMessageImpl({required this.messageId});

  @override
  final String messageId;

  @override
  String toString() {
    return 'GroupEvent.deleteMessage(messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMessageImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return deleteMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return deleteMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
  const factory _DeleteMessage({required final String messageId}) =
      _$DeleteMessageImpl;

  String get messageId;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return editStatusToTyping(isTyping);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return editStatusToTyping?.call(isTyping);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
abstract class _$$MarkMessageAsSeenImplCopyWith<$Res> {
  factory _$$MarkMessageAsSeenImplCopyWith(_$MarkMessageAsSeenImpl value,
          $Res Function(_$MarkMessageAsSeenImpl) then) =
      __$$MarkMessageAsSeenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$MarkMessageAsSeenImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$MarkMessageAsSeenImpl>
    implements _$$MarkMessageAsSeenImplCopyWith<$Res> {
  __$$MarkMessageAsSeenImplCopyWithImpl(_$MarkMessageAsSeenImpl _value,
      $Res Function(_$MarkMessageAsSeenImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$MarkMessageAsSeenImpl(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkMessageAsSeenImpl implements _MarkMessageAsSeen {
  const _$MarkMessageAsSeenImpl({required this.messageId});

  @override
  final String messageId;

  @override
  String toString() {
    return 'GroupEvent.markMessageAsSeen(messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkMessageAsSeenImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkMessageAsSeenImplCopyWith<_$MarkMessageAsSeenImpl> get copyWith =>
      __$$MarkMessageAsSeenImplCopyWithImpl<_$MarkMessageAsSeenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return markMessageAsSeen(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return markMessageAsSeen?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
    required TResult orElse(),
  }) {
    if (markMessageAsSeen != null) {
      return markMessageAsSeen(messageId);
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
    required TResult Function(_CreateGroupLoad value) createGroupLoad,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_AddMember value) addMember,
  }) {
    return markMessageAsSeen(this);
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
    TResult? Function(_CreateGroupLoad value)? createGroupLoad,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_AddMember value)? addMember,
  }) {
    return markMessageAsSeen?.call(this);
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
    TResult Function(_CreateGroupLoad value)? createGroupLoad,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_AddMember value)? addMember,
    required TResult orElse(),
  }) {
    if (markMessageAsSeen != null) {
      return markMessageAsSeen(this);
    }
    return orElse();
  }
}

abstract class _MarkMessageAsSeen implements GroupEvent {
  const factory _MarkMessageAsSeen({required final String messageId}) =
      _$MarkMessageAsSeenImpl;

  String get messageId;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkMessageAsSeenImplCopyWith<_$MarkMessageAsSeenImpl> get copyWith =>
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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return exitGroup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return exitGroup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
abstract class _$$ReloadGroupImplCopyWith<$Res> {
  factory _$$ReloadGroupImplCopyWith(
          _$ReloadGroupImpl value, $Res Function(_$ReloadGroupImpl) then) =
      __$$ReloadGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String stickerPath});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stickerPath = null,
  }) {
    return _then(_$ReloadGroupImpl(
      stickerPath: null == stickerPath
          ? _value.stickerPath
          : stickerPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReloadGroupImpl implements _ReloadGroup {
  const _$ReloadGroupImpl({required this.stickerPath});

  @override
  final String stickerPath;

  @override
  String toString() {
    return 'GroupEvent.reloadGroup(stickerPath: $stickerPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReloadGroupImpl &&
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
  _$$ReloadGroupImplCopyWith<_$ReloadGroupImpl> get copyWith =>
      __$$ReloadGroupImplCopyWithImpl<_$ReloadGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return reloadGroup(stickerPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return reloadGroup?.call(stickerPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
    required TResult orElse(),
  }) {
    if (reloadGroup != null) {
      return reloadGroup(stickerPath);
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
  const factory _ReloadGroup({required final String stickerPath}) =
      _$ReloadGroupImpl;

  String get stickerPath;

  /// Create a copy of GroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReloadGroupImplCopyWith<_$ReloadGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return createGroupLoad(groupName, groupDescription, groupImagePath,
        memberCanEdit, memberCanAddMember, memberCanMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return createGroupLoad?.call(groupName, groupDescription, groupImagePath,
        memberCanEdit, memberCanAddMember, memberCanMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return createGroup(participants);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return createGroup?.call(participants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
  $Res call({List<String> members});
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
              as List<String>,
    ));
  }
}

/// @nodoc

class _$AddMemberImpl implements _AddMember {
  const _$AddMemberImpl({required final List<String> members})
      : _members = members;

  final List<String> _members;
  @override
  List<String> get members {
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
    required TResult Function(Map<String, dynamic> chat) loadData,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
    required TResult Function() exitGroup,
    required TResult Function(String stickerPath) reloadGroup,
    required TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)
        createGroupLoad,
    required TResult Function(List<String> participants) createGroup,
    required TResult Function(List<String> members) addMember,
  }) {
    return addMember(members);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chat)? loadData,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
    TResult? Function()? exitGroup,
    TResult? Function(String stickerPath)? reloadGroup,
    TResult? Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult? Function(List<String> participants)? createGroup,
    TResult? Function(List<String> members)? addMember,
  }) {
    return addMember?.call(members);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chat)? loadData,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    TResult Function()? exitGroup,
    TResult Function(String stickerPath)? reloadGroup,
    TResult Function(
            String groupName,
            String groupDescription,
            String groupImagePath,
            bool memberCanEdit,
            bool memberCanAddMember,
            bool memberCanMessage)?
        createGroupLoad,
    TResult Function(List<String> participants)? createGroup,
    TResult Function(List<String> members)? addMember,
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
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_ExitGroup value) exitGroup,
    required TResult Function(_ReloadGroup value) reloadGroup,
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
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult? Function(_ExitGroup value)? exitGroup,
    TResult? Function(_ReloadGroup value)? reloadGroup,
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
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_ExitGroup value)? exitGroup,
    TResult Function(_ReloadGroup value)? reloadGroup,
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
  const factory _AddMember({required final List<String> members}) =
      _$AddMemberImpl;

  List<String> get members;

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
            Map<String, UserModels> groupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex)
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
            Map<String, UserModels> groupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex)?
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
            Map<String, UserModels> groupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex)?
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
            Map<String, UserModels> groupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex)
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
            Map<String, UserModels> groupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex)?
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
            Map<String, UserModels> groupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex)?
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
      Map<String, UserModels> groupMembers,
      Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
      int wallpaperIndex});
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
    Object? groupMembers = null,
    Object? messageData = freezed,
    Object? wallpaperIndex = null,
  }) {
    return _then(_$GroupDataImpl(
      groupData: freezed == groupData
          ? _value.groupData
          : groupData // ignore: cast_nullable_to_non_nullable
              as ChatModel?,
      groupMembers: null == groupMembers
          ? _value._groupMembers
          : groupMembers // ignore: cast_nullable_to_non_nullable
              as Map<String, UserModels>,
      messageData: freezed == messageData
          ? _value.messageData
          : messageData // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Map<String, dynamic>>>?,
      wallpaperIndex: null == wallpaperIndex
          ? _value.wallpaperIndex
          : wallpaperIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GroupDataImpl implements GroupData {
  const _$GroupDataImpl(
      {this.groupData = null,
      final Map<String, UserModels> groupMembers = const {},
      this.messageData = null,
      this.wallpaperIndex = 0})
      : _groupMembers = groupMembers;

  @override
  @JsonKey()
  final ChatModel? groupData;
  final Map<String, UserModels> _groupMembers;
  @override
  @JsonKey()
  Map<String, UserModels> get groupMembers {
    if (_groupMembers is EqualUnmodifiableMapView) return _groupMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_groupMembers);
  }

  @override
  @JsonKey()
  final Stream<QuerySnapshot<Map<String, dynamic>>>? messageData;
  @override
  @JsonKey()
  final int wallpaperIndex;

  @override
  String toString() {
    return 'GroupState.groupData(groupData: $groupData, groupMembers: $groupMembers, messageData: $messageData, wallpaperIndex: $wallpaperIndex)';
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
            (identical(other.messageData, messageData) ||
                other.messageData == messageData) &&
            (identical(other.wallpaperIndex, wallpaperIndex) ||
                other.wallpaperIndex == wallpaperIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupData,
      const DeepCollectionEquality().hash(_groupMembers),
      messageData,
      wallpaperIndex);

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
            Map<String, UserModels> groupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex)
        groupData,
  }) {
    return groupData(this.groupData, groupMembers, messageData, wallpaperIndex);
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
            Map<String, UserModels> groupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex)?
        groupData,
  }) {
    return groupData?.call(
        this.groupData, groupMembers, messageData, wallpaperIndex);
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
            Map<String, UserModels> groupMembers,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            int wallpaperIndex)?
        groupData,
    required TResult orElse(),
  }) {
    if (groupData != null) {
      return groupData(
          this.groupData, groupMembers, messageData, wallpaperIndex);
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
      final Map<String, UserModels> groupMembers,
      final Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
      final int wallpaperIndex}) = _$GroupDataImpl;

  ChatModel? get groupData;
  Map<String, UserModels> get groupMembers;
  Stream<QuerySnapshot<Map<String, dynamic>>>? get messageData;
  int get wallpaperIndex;

  /// Create a copy of GroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupDataImplCopyWith<_$GroupDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
