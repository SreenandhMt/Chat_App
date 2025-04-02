part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.chatData({
    @Default(null) ChatModel? chatData,
    @Default(null) Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
    @Default(false) bool isLoading,
    @Default("") String isError,
    @Default(0) int wallpaperIndex,
    @Default(false) bool isSavedContact,
    @Default([]) List<ChatModel> commonGroups,
    @Default([]) List<MessageModel> messages,
    @Default(false) bool inputLoading,
  }) = _ChatData;
}
