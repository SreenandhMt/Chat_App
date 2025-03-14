// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
mixin _$ChatModel {
  String get chatId => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;
  bool get isGroup => throw _privateConstructorUsedError;
  String get lastMessage => throw _privateConstructorUsedError;
  String get lastMessageSender => throw _privateConstructorUsedError;
  int get lastMessageTime => throw _privateConstructorUsedError;
  List<String> get participants => throw _privateConstructorUsedError; //group
  String? get groupImage => throw _privateConstructorUsedError;
  String? get groupName => throw _privateConstructorUsedError;
  String? get groupDescription => throw _privateConstructorUsedError;
  bool? get memberCanAddMember => throw _privateConstructorUsedError;
  bool? get memberCanEdit => throw _privateConstructorUsedError;
  bool? get memberCanMessage => throw _privateConstructorUsedError;
  Map<String, dynamic>? get unreadCount => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  /// Serializes this ChatModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call(
      {String chatId,
      int createdAt,
      bool isGroup,
      String lastMessage,
      String lastMessageSender,
      int lastMessageTime,
      List<String> participants,
      String? groupImage,
      String? groupName,
      String? groupDescription,
      bool? memberCanAddMember,
      bool? memberCanEdit,
      bool? memberCanMessage,
      Map<String, dynamic>? unreadCount,
      int order});
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? createdAt = null,
    Object? isGroup = null,
    Object? lastMessage = null,
    Object? lastMessageSender = null,
    Object? lastMessageTime = null,
    Object? participants = null,
    Object? groupImage = freezed,
    Object? groupName = freezed,
    Object? groupDescription = freezed,
    Object? memberCanAddMember = freezed,
    Object? memberCanEdit = freezed,
    Object? memberCanMessage = freezed,
    Object? unreadCount = freezed,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      isGroup: null == isGroup
          ? _value.isGroup
          : isGroup // ignore: cast_nullable_to_non_nullable
              as bool,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageSender: null == lastMessageSender
          ? _value.lastMessageSender
          : lastMessageSender // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageTime: null == lastMessageTime
          ? _value.lastMessageTime
          : lastMessageTime // ignore: cast_nullable_to_non_nullable
              as int,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      groupImage: freezed == groupImage
          ? _value.groupImage
          : groupImage // ignore: cast_nullable_to_non_nullable
              as String?,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      groupDescription: freezed == groupDescription
          ? _value.groupDescription
          : groupDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      memberCanAddMember: freezed == memberCanAddMember
          ? _value.memberCanAddMember
          : memberCanAddMember // ignore: cast_nullable_to_non_nullable
              as bool?,
      memberCanEdit: freezed == memberCanEdit
          ? _value.memberCanEdit
          : memberCanEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      memberCanMessage: freezed == memberCanMessage
          ? _value.memberCanMessage
          : memberCanMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      unreadCount: freezed == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatModelImplCopyWith<$Res>
    implements $ChatModelCopyWith<$Res> {
  factory _$$ChatModelImplCopyWith(
          _$ChatModelImpl value, $Res Function(_$ChatModelImpl) then) =
      __$$ChatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String chatId,
      int createdAt,
      bool isGroup,
      String lastMessage,
      String lastMessageSender,
      int lastMessageTime,
      List<String> participants,
      String? groupImage,
      String? groupName,
      String? groupDescription,
      bool? memberCanAddMember,
      bool? memberCanEdit,
      bool? memberCanMessage,
      Map<String, dynamic>? unreadCount,
      int order});
}

/// @nodoc
class __$$ChatModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ChatModelImpl>
    implements _$$ChatModelImplCopyWith<$Res> {
  __$$ChatModelImplCopyWithImpl(
      _$ChatModelImpl _value, $Res Function(_$ChatModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? createdAt = null,
    Object? isGroup = null,
    Object? lastMessage = null,
    Object? lastMessageSender = null,
    Object? lastMessageTime = null,
    Object? participants = null,
    Object? groupImage = freezed,
    Object? groupName = freezed,
    Object? groupDescription = freezed,
    Object? memberCanAddMember = freezed,
    Object? memberCanEdit = freezed,
    Object? memberCanMessage = freezed,
    Object? unreadCount = freezed,
    Object? order = null,
  }) {
    return _then(_$ChatModelImpl(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      isGroup: null == isGroup
          ? _value.isGroup
          : isGroup // ignore: cast_nullable_to_non_nullable
              as bool,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageSender: null == lastMessageSender
          ? _value.lastMessageSender
          : lastMessageSender // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageTime: null == lastMessageTime
          ? _value.lastMessageTime
          : lastMessageTime // ignore: cast_nullable_to_non_nullable
              as int,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      groupImage: freezed == groupImage
          ? _value.groupImage
          : groupImage // ignore: cast_nullable_to_non_nullable
              as String?,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      groupDescription: freezed == groupDescription
          ? _value.groupDescription
          : groupDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      memberCanAddMember: freezed == memberCanAddMember
          ? _value.memberCanAddMember
          : memberCanAddMember // ignore: cast_nullable_to_non_nullable
              as bool?,
      memberCanEdit: freezed == memberCanEdit
          ? _value.memberCanEdit
          : memberCanEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      memberCanMessage: freezed == memberCanMessage
          ? _value.memberCanMessage
          : memberCanMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      unreadCount: freezed == unreadCount
          ? _value._unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatModelImpl implements _ChatModel {
  const _$ChatModelImpl(
      {required this.chatId,
      required this.createdAt,
      required this.isGroup,
      required this.lastMessage,
      required this.lastMessageSender,
      required this.lastMessageTime,
      required final List<String> participants,
      required this.groupImage,
      required this.groupName,
      required this.groupDescription,
      required this.memberCanAddMember,
      required this.memberCanEdit,
      required this.memberCanMessage,
      required final Map<String, dynamic>? unreadCount,
      required this.order})
      : _participants = participants,
        _unreadCount = unreadCount;

  factory _$ChatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatModelImplFromJson(json);

  @override
  final String chatId;
  @override
  final int createdAt;
  @override
  final bool isGroup;
  @override
  final String lastMessage;
  @override
  final String lastMessageSender;
  @override
  final int lastMessageTime;
  final List<String> _participants;
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

//group
  @override
  final String? groupImage;
  @override
  final String? groupName;
  @override
  final String? groupDescription;
  @override
  final bool? memberCanAddMember;
  @override
  final bool? memberCanEdit;
  @override
  final bool? memberCanMessage;
  final Map<String, dynamic>? _unreadCount;
  @override
  Map<String, dynamic>? get unreadCount {
    final value = _unreadCount;
    if (value == null) return null;
    if (_unreadCount is EqualUnmodifiableMapView) return _unreadCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int order;

  @override
  String toString() {
    return 'ChatModel(chatId: $chatId, createdAt: $createdAt, isGroup: $isGroup, lastMessage: $lastMessage, lastMessageSender: $lastMessageSender, lastMessageTime: $lastMessageTime, participants: $participants, groupImage: $groupImage, groupName: $groupName, groupDescription: $groupDescription, memberCanAddMember: $memberCanAddMember, memberCanEdit: $memberCanEdit, memberCanMessage: $memberCanMessage, unreadCount: $unreadCount, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatModelImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isGroup, isGroup) || other.isGroup == isGroup) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastMessageSender, lastMessageSender) ||
                other.lastMessageSender == lastMessageSender) &&
            (identical(other.lastMessageTime, lastMessageTime) ||
                other.lastMessageTime == lastMessageTime) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.groupImage, groupImage) ||
                other.groupImage == groupImage) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.groupDescription, groupDescription) ||
                other.groupDescription == groupDescription) &&
            (identical(other.memberCanAddMember, memberCanAddMember) ||
                other.memberCanAddMember == memberCanAddMember) &&
            (identical(other.memberCanEdit, memberCanEdit) ||
                other.memberCanEdit == memberCanEdit) &&
            (identical(other.memberCanMessage, memberCanMessage) ||
                other.memberCanMessage == memberCanMessage) &&
            const DeepCollectionEquality()
                .equals(other._unreadCount, _unreadCount) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      chatId,
      createdAt,
      isGroup,
      lastMessage,
      lastMessageSender,
      lastMessageTime,
      const DeepCollectionEquality().hash(_participants),
      groupImage,
      groupName,
      groupDescription,
      memberCanAddMember,
      memberCanEdit,
      memberCanMessage,
      const DeepCollectionEquality().hash(_unreadCount),
      order);

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      __$$ChatModelImplCopyWithImpl<_$ChatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatModelImplToJson(
      this,
    );
  }
}

abstract class _ChatModel implements ChatModel {
  const factory _ChatModel(
      {required final String chatId,
      required final int createdAt,
      required final bool isGroup,
      required final String lastMessage,
      required final String lastMessageSender,
      required final int lastMessageTime,
      required final List<String> participants,
      required final String? groupImage,
      required final String? groupName,
      required final String? groupDescription,
      required final bool? memberCanAddMember,
      required final bool? memberCanEdit,
      required final bool? memberCanMessage,
      required final Map<String, dynamic>? unreadCount,
      required final int order}) = _$ChatModelImpl;

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$ChatModelImpl.fromJson;

  @override
  String get chatId;
  @override
  int get createdAt;
  @override
  bool get isGroup;
  @override
  String get lastMessage;
  @override
  String get lastMessageSender;
  @override
  int get lastMessageTime;
  @override
  List<String> get participants; //group
  @override
  String? get groupImage;
  @override
  String? get groupName;
  @override
  String? get groupDescription;
  @override
  bool? get memberCanAddMember;
  @override
  bool? get memberCanEdit;
  @override
  bool? get memberCanMessage;
  @override
  Map<String, dynamic>? get unreadCount;
  @override
  int get order;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
