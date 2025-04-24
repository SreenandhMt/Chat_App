part of 'group_bloc.dart';

@freezed
class GroupState with _$GroupState {
  const factory GroupState.createGroupData({
    required String groupName,
    required String groupDescription,
    required String groupImagePath,
    required bool memberCanEdit,
    required bool memberCanAddMember,
    required bool memberCanMessage,
    @Default(null) List<UserModels>? contacts,
    @Default([]) List<String> selectedContacts,
  }) = _CreateGroupData;

  const factory GroupState.groupData({
    @Default(null) ChatModel? groupData,
    @Default(null) Map<String, UserModels>? groupMembers,
    @Default({}) Map<String, UserModels> allGroupMembers,
    @Default(null) Map<String, UserModels>? blockedGroupMembers,
    @Default(null) Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
    @Default(0) int wallpaperIndex,
    @Default({}) Map<String, List<MessageModel>> messages,
    @Default(false) bool isLoading,
    @Default(false) bool inputLoading,
    @Default(null) AppException? isError,
  }) = GroupData;
}
