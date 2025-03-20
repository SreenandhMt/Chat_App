part of 'group_bloc.dart';

@freezed
class GroupEvent with _$GroupEvent {
  const factory GroupEvent.loadData({required Map<String, dynamic> chat}) =
      _LoadData;
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
  //
  const factory GroupEvent.votePoll(
      {required String messageId,
      required String option,
      required Map<String, dynamic> votes}) = _VotePoll;
  //delete and edit
  const factory GroupEvent.deleteMessage({required String messageId}) =
      _DeleteMessage;
  const factory GroupEvent.editStatusToTyping({required bool isTyping}) =
      //
      _EditStatusToTyping;
  const factory GroupEvent.markMessageAsSeen({required String messageId}) =
      _MarkMessageAsSeen;
  const factory GroupEvent.exitGroup() = _ExitGroup;
  //reloading group Data
  const factory GroupEvent.reloadGroup({required String stickerPath}) =
      _ReloadGroup;
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
  const factory GroupEvent.addMember({required List<String> members}) =
      _AddMember;
}
