// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> chatData) getMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> chatData)? getMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> chatData)? getMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
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
    extends _$ChatEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ChatEvent.started()';
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
    required TResult Function(Map<String, dynamic> chatData) getMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> chatData)? getMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> chatData)? getMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
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
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetMessagesImplCopyWith<$Res> {
  factory _$$GetMessagesImplCopyWith(
          _$GetMessagesImpl value, $Res Function(_$GetMessagesImpl) then) =
      __$$GetMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> chatData});
}

/// @nodoc
class __$$GetMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetMessagesImpl>
    implements _$$GetMessagesImplCopyWith<$Res> {
  __$$GetMessagesImplCopyWithImpl(
      _$GetMessagesImpl _value, $Res Function(_$GetMessagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatData = null,
  }) {
    return _then(_$GetMessagesImpl(
      null == chatData
          ? _value._chatData
          : chatData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$GetMessagesImpl implements _GetMessages {
  const _$GetMessagesImpl(final Map<String, dynamic> chatData)
      : _chatData = chatData;

  final Map<String, dynamic> _chatData;
  @override
  Map<String, dynamic> get chatData {
    if (_chatData is EqualUnmodifiableMapView) return _chatData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_chatData);
  }

  @override
  String toString() {
    return 'ChatEvent.getMessages(chatData: $chatData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesImpl &&
            const DeepCollectionEquality().equals(other._chatData, _chatData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chatData));

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessagesImplCopyWith<_$GetMessagesImpl> get copyWith =>
      __$$GetMessagesImplCopyWithImpl<_$GetMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> chatData) getMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
  }) {
    return getMessages(chatData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> chatData)? getMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
  }) {
    return getMessages?.call(chatData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> chatData)? getMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(chatData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return getMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return getMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(this);
    }
    return orElse();
  }
}

abstract class _GetMessages implements ChatEvent {
  const factory _GetMessages(final Map<String, dynamic> chatData) =
      _$GetMessagesImpl;

  Map<String, dynamic> get chatData;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMessagesImplCopyWith<_$GetMessagesImpl> get copyWith =>
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
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
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
    return 'ChatEvent.sendMessage(message: $message)';
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

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> chatData) getMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> chatData)? getMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> chatData)? getMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
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
    required TResult Function(_Started value) started,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage(final String message) = _$SendMessageImpl;

  String get message;

  /// Create a copy of ChatEvent
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
    extends _$ChatEventCopyWithImpl<$Res, _$SendImageImpl>
    implements _$$SendImageImplCopyWith<$Res> {
  __$$SendImageImplCopyWithImpl(
      _$SendImageImpl _value, $Res Function(_$SendImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
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
    return 'ChatEvent.sendImage(path: $path)';
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

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendImageImplCopyWith<_$SendImageImpl> get copyWith =>
      __$$SendImageImplCopyWithImpl<_$SendImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> chatData) getMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
  }) {
    return sendImage(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> chatData)? getMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
  }) {
    return sendImage?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> chatData)? getMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
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
    required TResult Function(_Started value) started,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return sendImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return sendImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (sendImage != null) {
      return sendImage(this);
    }
    return orElse();
  }
}

abstract class _SendImage implements ChatEvent {
  const factory _SendImage(final String path) = _$SendImageImpl;

  String get path;

  /// Create a copy of ChatEvent
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
    extends _$ChatEventCopyWithImpl<$Res, _$AddReactionImpl>
    implements _$$AddReactionImplCopyWith<$Res> {
  __$$AddReactionImplCopyWithImpl(
      _$AddReactionImpl _value, $Res Function(_$AddReactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
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
    return 'ChatEvent.addReaction(messageId: $messageId, emoji: $emoji)';
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

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddReactionImplCopyWith<_$AddReactionImpl> get copyWith =>
      __$$AddReactionImplCopyWithImpl<_$AddReactionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> chatData) getMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
  }) {
    return addReaction(messageId, emoji);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> chatData)? getMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
  }) {
    return addReaction?.call(messageId, emoji);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> chatData)? getMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
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
    required TResult Function(_Started value) started,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return addReaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return addReaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (addReaction != null) {
      return addReaction(this);
    }
    return orElse();
  }
}

abstract class _AddReaction implements ChatEvent {
  const factory _AddReaction(final String messageId, final String emoji) =
      _$AddReactionImpl;

  String get messageId;
  String get emoji;

  /// Create a copy of ChatEvent
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
    extends _$ChatEventCopyWithImpl<$Res, _$SendAudioFileImpl>
    implements _$$SendAudioFileImplCopyWith<$Res> {
  __$$SendAudioFileImplCopyWithImpl(
      _$SendAudioFileImpl _value, $Res Function(_$SendAudioFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
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
    return 'ChatEvent.sendAudioFile(file: $file, waveList: $waveList)';
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

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendAudioFileImplCopyWith<_$SendAudioFileImpl> get copyWith =>
      __$$SendAudioFileImplCopyWithImpl<_$SendAudioFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> chatData) getMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
  }) {
    return sendAudioFile(file, waveList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> chatData)? getMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
  }) {
    return sendAudioFile?.call(file, waveList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> chatData)? getMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
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
    required TResult Function(_Started value) started,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return sendAudioFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return sendAudioFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (sendAudioFile != null) {
      return sendAudioFile(this);
    }
    return orElse();
  }
}

abstract class _SendAudioFile implements ChatEvent {
  const factory _SendAudioFile(final File file, final List<double> waveList) =
      _$SendAudioFileImpl;

  File get file;
  List<double> get waveList;

  /// Create a copy of ChatEvent
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
    extends _$ChatEventCopyWithImpl<$Res, _$SendVideoFileImpl>
    implements _$$SendVideoFileImplCopyWith<$Res> {
  __$$SendVideoFileImplCopyWithImpl(
      _$SendVideoFileImpl _value, $Res Function(_$SendVideoFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
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
    return 'ChatEvent.sendVideoFile(path: $path)';
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

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendVideoFileImplCopyWith<_$SendVideoFileImpl> get copyWith =>
      __$$SendVideoFileImplCopyWithImpl<_$SendVideoFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> chatData) getMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
  }) {
    return sendVideoFile(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> chatData)? getMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
  }) {
    return sendVideoFile?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> chatData)? getMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
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
    required TResult Function(_Started value) started,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return sendVideoFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return sendVideoFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (sendVideoFile != null) {
      return sendVideoFile(this);
    }
    return orElse();
  }
}

abstract class _SendVideoFile implements ChatEvent {
  const factory _SendVideoFile(final String path) = _$SendVideoFileImpl;

  String get path;

  /// Create a copy of ChatEvent
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
    extends _$ChatEventCopyWithImpl<$Res, _$SendLinkImpl>
    implements _$$SendLinkImplCopyWith<$Res> {
  __$$SendLinkImplCopyWithImpl(
      _$SendLinkImpl _value, $Res Function(_$SendLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
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
    return 'ChatEvent.sendLink(link: $link)';
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

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendLinkImplCopyWith<_$SendLinkImpl> get copyWith =>
      __$$SendLinkImplCopyWithImpl<_$SendLinkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> chatData) getMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
  }) {
    return sendLink(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> chatData)? getMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
  }) {
    return sendLink?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> chatData)? getMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
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
    required TResult Function(_Started value) started,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return sendLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return sendLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (sendLink != null) {
      return sendLink(this);
    }
    return orElse();
  }
}

abstract class _SendLink implements ChatEvent {
  const factory _SendLink(final String link) = _$SendLinkImpl;

  String get link;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendLinkImplCopyWith<_$SendLinkImpl> get copyWith =>
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
    extends _$ChatEventCopyWithImpl<$Res, _$SendStickerImpl>
    implements _$$SendStickerImplCopyWith<$Res> {
  __$$SendStickerImplCopyWithImpl(
      _$SendStickerImpl _value, $Res Function(_$SendStickerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
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
    return 'ChatEvent.sendSticker(stickerPath: $stickerPath)';
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

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendStickerImplCopyWith<_$SendStickerImpl> get copyWith =>
      __$$SendStickerImplCopyWithImpl<_$SendStickerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> chatData) getMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
  }) {
    return sendSticker(stickerPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> chatData)? getMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
  }) {
    return sendSticker?.call(stickerPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> chatData)? getMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
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
    required TResult Function(_Started value) started,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return sendSticker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return sendSticker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (sendSticker != null) {
      return sendSticker(this);
    }
    return orElse();
  }
}

abstract class _SendSticker implements ChatEvent {
  const factory _SendSticker({required final String stickerPath}) =
      _$SendStickerImpl;

  String get stickerPath;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendStickerImplCopyWith<_$SendStickerImpl> get copyWith =>
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
    extends _$ChatEventCopyWithImpl<$Res, _$SendDocumentImpl>
    implements _$$SendDocumentImplCopyWith<$Res> {
  __$$SendDocumentImplCopyWithImpl(
      _$SendDocumentImpl _value, $Res Function(_$SendDocumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
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
    return 'ChatEvent.sendDocument(path: $path)';
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

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendDocumentImplCopyWith<_$SendDocumentImpl> get copyWith =>
      __$$SendDocumentImplCopyWithImpl<_$SendDocumentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> chatData) getMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
  }) {
    return sendDocument(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> chatData)? getMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
  }) {
    return sendDocument?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> chatData)? getMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
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
    required TResult Function(_Started value) started,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return sendDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return sendDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (sendDocument != null) {
      return sendDocument(this);
    }
    return orElse();
  }
}

abstract class _SendDocument implements ChatEvent {
  const factory _SendDocument(final String path) = _$SendDocumentImpl;

  String get path;

  /// Create a copy of ChatEvent
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
    extends _$ChatEventCopyWithImpl<$Res, _$CreatePollImpl>
    implements _$$CreatePollImplCopyWith<$Res> {
  __$$CreatePollImplCopyWithImpl(
      _$CreatePollImpl _value, $Res Function(_$CreatePollImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
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
    return 'ChatEvent.createPoll(question: $question, options: $options)';
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

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePollImplCopyWith<_$CreatePollImpl> get copyWith =>
      __$$CreatePollImplCopyWithImpl<_$CreatePollImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> chatData) getMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
  }) {
    return createPoll(question, options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> chatData)? getMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
  }) {
    return createPoll?.call(question, options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> chatData)? getMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
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
    required TResult Function(_Started value) started,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return createPoll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return createPoll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (createPoll != null) {
      return createPoll(this);
    }
    return orElse();
  }
}

abstract class _CreatePoll implements ChatEvent {
  const factory _CreatePoll(
      {required final String question,
      required final List<String> options}) = _$CreatePollImpl;

  String get question;
  List<String> get options;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePollImplCopyWith<_$CreatePollImpl> get copyWith =>
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
    extends _$ChatEventCopyWithImpl<$Res, _$VotePollImpl>
    implements _$$VotePollImplCopyWith<$Res> {
  __$$VotePollImplCopyWithImpl(
      _$VotePollImpl _value, $Res Function(_$VotePollImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
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
    return 'ChatEvent.votePoll(messageId: $messageId, option: $option, votes: $votes)';
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

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VotePollImplCopyWith<_$VotePollImpl> get copyWith =>
      __$$VotePollImplCopyWithImpl<_$VotePollImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> chatData) getMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
  }) {
    return votePoll(messageId, option, votes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> chatData)? getMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
  }) {
    return votePoll?.call(messageId, option, votes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> chatData)? getMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
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
    required TResult Function(_Started value) started,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return votePoll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return votePoll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (votePoll != null) {
      return votePoll(this);
    }
    return orElse();
  }
}

abstract class _VotePoll implements ChatEvent {
  const factory _VotePoll(
      {required final String messageId,
      required final String option,
      required final Map<String, dynamic> votes}) = _$VotePollImpl;

  String get messageId;
  String get option;
  Map<String, dynamic> get votes;

  /// Create a copy of ChatEvent
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
    extends _$ChatEventCopyWithImpl<$Res, _$DeleteMessageImpl>
    implements _$$DeleteMessageImplCopyWith<$Res> {
  __$$DeleteMessageImplCopyWithImpl(
      _$DeleteMessageImpl _value, $Res Function(_$DeleteMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
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
    return 'ChatEvent.deleteMessage(messageId: $messageId)';
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

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      __$$DeleteMessageImplCopyWithImpl<_$DeleteMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> chatData) getMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
  }) {
    return deleteMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> chatData)? getMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
  }) {
    return deleteMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> chatData)? getMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
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
    required TResult Function(_Started value) started,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return deleteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return deleteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class _DeleteMessage implements ChatEvent {
  const factory _DeleteMessage({required final String messageId}) =
      _$DeleteMessageImpl;

  String get messageId;

  /// Create a copy of ChatEvent
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
    extends _$ChatEventCopyWithImpl<$Res, _$EditStatusToTypingImpl>
    implements _$$EditStatusToTypingImplCopyWith<$Res> {
  __$$EditStatusToTypingImplCopyWithImpl(_$EditStatusToTypingImpl _value,
      $Res Function(_$EditStatusToTypingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
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
    return 'ChatEvent.editStatusToTyping(isTyping: $isTyping)';
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

  /// Create a copy of ChatEvent
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
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> chatData) getMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
  }) {
    return editStatusToTyping(isTyping);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> chatData)? getMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
  }) {
    return editStatusToTyping?.call(isTyping);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> chatData)? getMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
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
    required TResult Function(_Started value) started,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return editStatusToTyping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return editStatusToTyping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (editStatusToTyping != null) {
      return editStatusToTyping(this);
    }
    return orElse();
  }
}

abstract class _EditStatusToTyping implements ChatEvent {
  const factory _EditStatusToTyping({required final bool isTyping}) =
      _$EditStatusToTypingImpl;

  bool get isTyping;

  /// Create a copy of ChatEvent
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
    extends _$ChatEventCopyWithImpl<$Res, _$MarkMessageAsSeenImpl>
    implements _$$MarkMessageAsSeenImplCopyWith<$Res> {
  __$$MarkMessageAsSeenImplCopyWithImpl(_$MarkMessageAsSeenImpl _value,
      $Res Function(_$MarkMessageAsSeenImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
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
    return 'ChatEvent.markMessageAsSeen(messageId: $messageId)';
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

  /// Create a copy of ChatEvent
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
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> chatData) getMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String path) sendImage,
    required TResult Function(String messageId, String emoji) addReaction,
    required TResult Function(File file, List<double> waveList) sendAudioFile,
    required TResult Function(String path) sendVideoFile,
    required TResult Function(String link) sendLink,
    required TResult Function(String stickerPath) sendSticker,
    required TResult Function(String path) sendDocument,
    required TResult Function(String question, List<String> options) createPoll,
    required TResult Function(
            String messageId, String option, Map<String, dynamic> votes)
        votePoll,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(bool isTyping) editStatusToTyping,
    required TResult Function(String messageId) markMessageAsSeen,
  }) {
    return markMessageAsSeen(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> chatData)? getMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String path)? sendImage,
    TResult? Function(String messageId, String emoji)? addReaction,
    TResult? Function(File file, List<double> waveList)? sendAudioFile,
    TResult? Function(String path)? sendVideoFile,
    TResult? Function(String link)? sendLink,
    TResult? Function(String stickerPath)? sendSticker,
    TResult? Function(String path)? sendDocument,
    TResult? Function(String question, List<String> options)? createPoll,
    TResult? Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(bool isTyping)? editStatusToTyping,
    TResult? Function(String messageId)? markMessageAsSeen,
  }) {
    return markMessageAsSeen?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> chatData)? getMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String path)? sendImage,
    TResult Function(String messageId, String emoji)? addReaction,
    TResult Function(File file, List<double> waveList)? sendAudioFile,
    TResult Function(String path)? sendVideoFile,
    TResult Function(String link)? sendLink,
    TResult Function(String stickerPath)? sendSticker,
    TResult Function(String path)? sendDocument,
    TResult Function(String question, List<String> options)? createPoll,
    TResult Function(
            String messageId, String option, Map<String, dynamic> votes)?
        votePoll,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(bool isTyping)? editStatusToTyping,
    TResult Function(String messageId)? markMessageAsSeen,
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
    required TResult Function(_Started value) started,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_AddReaction value) addReaction,
    required TResult Function(_SendAudioFile value) sendAudioFile,
    required TResult Function(_SendVideoFile value) sendVideoFile,
    required TResult Function(_SendLink value) sendLink,
    required TResult Function(_SendSticker value) sendSticker,
    required TResult Function(_SendDocument value) sendDocument,
    required TResult Function(_CreatePoll value) createPoll,
    required TResult Function(_VotePoll value) votePoll,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_EditStatusToTyping value) editStatusToTyping,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return markMessageAsSeen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_AddReaction value)? addReaction,
    TResult? Function(_SendAudioFile value)? sendAudioFile,
    TResult? Function(_SendVideoFile value)? sendVideoFile,
    TResult? Function(_SendLink value)? sendLink,
    TResult? Function(_SendSticker value)? sendSticker,
    TResult? Function(_SendDocument value)? sendDocument,
    TResult? Function(_CreatePoll value)? createPoll,
    TResult? Function(_VotePoll value)? votePoll,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return markMessageAsSeen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_AddReaction value)? addReaction,
    TResult Function(_SendAudioFile value)? sendAudioFile,
    TResult Function(_SendVideoFile value)? sendVideoFile,
    TResult Function(_SendLink value)? sendLink,
    TResult Function(_SendSticker value)? sendSticker,
    TResult Function(_SendDocument value)? sendDocument,
    TResult Function(_CreatePoll value)? createPoll,
    TResult Function(_VotePoll value)? votePoll,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_EditStatusToTyping value)? editStatusToTyping,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (markMessageAsSeen != null) {
      return markMessageAsSeen(this);
    }
    return orElse();
  }
}

abstract class _MarkMessageAsSeen implements ChatEvent {
  const factory _MarkMessageAsSeen({required final String messageId}) =
      _$MarkMessageAsSeenImpl;

  String get messageId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkMessageAsSeenImplCopyWith<_$MarkMessageAsSeenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  Map<String, dynamic>? get chatData => throw _privateConstructorUsedError;
  Stream<QuerySnapshot<Map<String, dynamic>>>? get messageData =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get isError => throw _privateConstructorUsedError;
  int get wallpaperIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, dynamic>? chatData,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            bool isLoading,
            String isError,
            int wallpaperIndex)
        chatData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Map<String, dynamic>? chatData,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            bool isLoading,
            String isError,
            int wallpaperIndex)?
        chatData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Map<String, dynamic>? chatData,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            bool isLoading,
            String isError,
            int wallpaperIndex)?
        chatData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatData value) chatData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatData value)? chatData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatData value)? chatData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {Map<String, dynamic>? chatData,
      Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
      bool isLoading,
      String isError,
      int wallpaperIndex});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatData = freezed,
    Object? messageData = freezed,
    Object? isLoading = null,
    Object? isError = null,
    Object? wallpaperIndex = null,
  }) {
    return _then(_value.copyWith(
      chatData: freezed == chatData
          ? _value.chatData
          : chatData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      messageData: freezed == messageData
          ? _value.messageData
          : messageData // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Map<String, dynamic>>>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as String,
      wallpaperIndex: null == wallpaperIndex
          ? _value.wallpaperIndex
          : wallpaperIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatDataImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatDataImplCopyWith(
          _$ChatDataImpl value, $Res Function(_$ChatDataImpl) then) =
      __$$ChatDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? chatData,
      Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
      bool isLoading,
      String isError,
      int wallpaperIndex});
}

/// @nodoc
class __$$ChatDataImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatDataImpl>
    implements _$$ChatDataImplCopyWith<$Res> {
  __$$ChatDataImplCopyWithImpl(
      _$ChatDataImpl _value, $Res Function(_$ChatDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatData = freezed,
    Object? messageData = freezed,
    Object? isLoading = null,
    Object? isError = null,
    Object? wallpaperIndex = null,
  }) {
    return _then(_$ChatDataImpl(
      chatData: freezed == chatData
          ? _value._chatData
          : chatData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      messageData: freezed == messageData
          ? _value.messageData
          : messageData // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Map<String, dynamic>>>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as String,
      wallpaperIndex: null == wallpaperIndex
          ? _value.wallpaperIndex
          : wallpaperIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChatDataImpl implements _ChatData {
  const _$ChatDataImpl(
      {final Map<String, dynamic>? chatData = null,
      this.messageData = null,
      this.isLoading = false,
      this.isError = "",
      this.wallpaperIndex = 0})
      : _chatData = chatData;

  final Map<String, dynamic>? _chatData;
  @override
  @JsonKey()
  Map<String, dynamic>? get chatData {
    final value = _chatData;
    if (value == null) return null;
    if (_chatData is EqualUnmodifiableMapView) return _chatData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final Stream<QuerySnapshot<Map<String, dynamic>>>? messageData;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String isError;
  @override
  @JsonKey()
  final int wallpaperIndex;

  @override
  String toString() {
    return 'ChatState.chatData(chatData: $chatData, messageData: $messageData, isLoading: $isLoading, isError: $isError, wallpaperIndex: $wallpaperIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDataImpl &&
            const DeepCollectionEquality().equals(other._chatData, _chatData) &&
            (identical(other.messageData, messageData) ||
                other.messageData == messageData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.wallpaperIndex, wallpaperIndex) ||
                other.wallpaperIndex == wallpaperIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chatData),
      messageData,
      isLoading,
      isError,
      wallpaperIndex);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDataImplCopyWith<_$ChatDataImpl> get copyWith =>
      __$$ChatDataImplCopyWithImpl<_$ChatDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, dynamic>? chatData,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            bool isLoading,
            String isError,
            int wallpaperIndex)
        chatData,
  }) {
    return chatData(
        this.chatData, messageData, isLoading, isError, wallpaperIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Map<String, dynamic>? chatData,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            bool isLoading,
            String isError,
            int wallpaperIndex)?
        chatData,
  }) {
    return chatData?.call(
        this.chatData, messageData, isLoading, isError, wallpaperIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Map<String, dynamic>? chatData,
            Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
            bool isLoading,
            String isError,
            int wallpaperIndex)?
        chatData,
    required TResult orElse(),
  }) {
    if (chatData != null) {
      return chatData(
          this.chatData, messageData, isLoading, isError, wallpaperIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatData value) chatData,
  }) {
    return chatData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatData value)? chatData,
  }) {
    return chatData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatData value)? chatData,
    required TResult orElse(),
  }) {
    if (chatData != null) {
      return chatData(this);
    }
    return orElse();
  }
}

abstract class _ChatData implements ChatState {
  const factory _ChatData(
      {final Map<String, dynamic>? chatData,
      final Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
      final bool isLoading,
      final String isError,
      final int wallpaperIndex}) = _$ChatDataImpl;

  @override
  Map<String, dynamic>? get chatData;
  @override
  Stream<QuerySnapshot<Map<String, dynamic>>>? get messageData;
  @override
  bool get isLoading;
  @override
  String get isError;
  @override
  int get wallpaperIndex;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatDataImplCopyWith<_$ChatDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
