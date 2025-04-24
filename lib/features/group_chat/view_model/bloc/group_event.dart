part of 'group_bloc.dart';

@freezed
class GroupEvent with _$GroupEvent {
  const factory GroupEvent.loadData({required ChatModel chat}) = _LoadData;
  //sending messages
  const factory GroupEvent.sendMessage(String message) = _SendMessage;
  const factory GroupEvent.sendImage(String path) = _SendImage;
  const factory GroupEvent.addReaction(String messageId, String emoji) =
      _AddReaction;
  const factory GroupEvent.sendAudioFile(File file, List<double> waveList) =
      _SendAudioFile;
  const factory GroupEvent.sendVideoFile(String path) = _SendVideoFile;
  const factory GroupEvent.sendLink(String link) = _SendLink;
  const factory GroupEvent.sendDocument(String path) = _SendDocument;
  const factory GroupEvent.createPoll(
      {required String question, required List<String> options}) = _CreatePoll;
  const factory GroupEvent.sendSticker({required String stickerPath}) =
      _SendSticker;
  const factory GroupEvent.kickUser({required String uid}) = _KickUser;
  const factory GroupEvent.exitGroup() = _ExitGroup;
  const factory GroupEvent.deleteGroup({required String uid}) = _DeleteGroup;
  const factory GroupEvent.makeAdmin({required String uid}) = _MakeAdmin;
  const factory GroupEvent.removeAdmin({required String uid}) = _RemoveAdmin;
  const factory GroupEvent.blockUser({required String uid}) = _BlockUser;
  //notification settings
  const factory GroupEvent.muteNotification({required String uid}) =
      _MuteNotification;
  const factory GroupEvent.unmuteNotification({required String uid}) =
      _UnmuteNotification;
  //edit permission
  const factory GroupEvent.editPermission(
      {@Default(null) bool? memberCanEdit,
      @Default(null) bool? memberCanAddMember,
      @Default(null) bool? memberCanMessage}) = _EditPermission;
  //
  const factory GroupEvent.clearError() = _ClearError;
  const factory GroupEvent.votePoll(
      {required String messageId,
      required String option,
      required Map<String, dynamic> votes}) = _VotePoll;
  //delete and edit
  const factory GroupEvent.deleteMessage({required List<String> messageId}) =
      _DeleteMessage;
  const factory GroupEvent.deleteChatForMe({required List<String> messageIds}) =
      _DeleteChatForMe;
  //
  const factory GroupEvent.editStatusToTyping({required bool isTyping}) =
      //
      _EditStatusToTyping;
  const factory GroupEvent.loadMessageModel(
          {required List<QueryDocumentSnapshot<Map<String, dynamic>>> docs}) =
      _LoadMessageModel;
  //reloading group Data
  const factory GroupEvent.reloadGroup() = _ReloadGroup;
  const factory GroupEvent.loadGroupInfo() = _LoadGroupInfo;
  //create group
  const factory GroupEvent.createGroupLoad({
    required String groupName,
    required String groupDescription,
    required String groupImagePath,
    required bool memberCanEdit,
    required bool memberCanAddMember,
    required bool memberCanMessage,
  }) = _CreateGroupLoad;
  const factory GroupEvent.createGroup({required List<String> participants}) =
      _CreateGroup;
  const factory GroupEvent.addMember({required List<UserModels> members}) =
      _AddMember;

  const factory GroupEvent.clearState() = _ClearState;
}
