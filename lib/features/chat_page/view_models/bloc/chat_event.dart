part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;
  const factory ChatEvent.getMessages(Map<String, dynamic> chatData) =
      _GetMessages;
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
  const factory ChatEvent.deleteMessage({required String messageId}) =
      _DeleteMessage;
  const factory ChatEvent.editStatusToTyping({required bool isTyping}) =
      _EditStatusToTyping;
  const factory ChatEvent.markMessageAsSeen({required String messageId}) =
      _MarkMessageAsSeen;
}
