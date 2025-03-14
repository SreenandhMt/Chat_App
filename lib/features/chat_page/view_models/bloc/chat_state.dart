part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.chatData({
    @Default(null) Map<String, dynamic>? chatData,
    @Default(null) Stream<QuerySnapshot<Map<String, dynamic>>>? messageData,
    @Default(false) bool isLoading,
    @Default("") String isError,
  }) = _ChatData;
}
