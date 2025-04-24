part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;
  const factory ChatEvent.getMessages(ChatModel chatData) = _GetMessages;
  const factory ChatEvent.loadMessages(
      List<QueryDocumentSnapshot<Map<String, dynamic>>> docs) = _LoadMessages;
  const factory ChatEvent.sendMessage(String message) = _SendMessage;
  const factory ChatEvent.sendImage(String path) = _SendImage;
  const factory ChatEvent.addReaction(String messageId, String emoji) =
      _AddReaction;
  const factory ChatEvent.sendAudioFile(File file, List<double> waveList) =
      _SendAudioFile;
  const factory ChatEvent.sendVideoFile(String path) = _SendVideoFile;
  const factory ChatEvent.sendLink(String link) = _SendLink;
  const factory ChatEvent.sendSticker({required String stickerPath}) =
      _SendSticker;
  const factory ChatEvent.sendDocument(String path) = _SendDocument;
  const factory ChatEvent.createPoll(
      {required String question, required List<String> options}) = _CreatePoll;
  const factory ChatEvent.votePoll(
      {required String messageId,
      required String option,
      required Map<String, dynamic> votes}) = _VotePoll;
  const factory ChatEvent.deleteMessage({required List<String> messageIds}) =
      _DeleteMessage;
  const factory ChatEvent.deleteMessageForMe(
      {required List<String> messageIds}) = _DeleteMessageForMe;
  const factory ChatEvent.editStatusToTyping({required bool isTyping}) =
      _EditStatusToTyping;
  const factory ChatEvent.muteChat({required bool status}) = _MuteChat;
  const factory ChatEvent.blockUser({required String uid}) = _BlockUser;
  const factory ChatEvent.reportUser({required String uid}) = _ReportUser;
  const factory ChatEvent.clearState() = _ClearState;
  const factory ChatEvent.clearError() = _ClearError;
}
