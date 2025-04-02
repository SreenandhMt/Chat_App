part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState.loadedData({
    @Default(true) bool isLoading,
    @Default("") String errorMessage,
    @Default([]) List<ChatModel> chatsModels,
    @Default(null) Stream<QuerySnapshot<Map<String, dynamic>>>? chatsStream,
    @Default([]) List<String> categoryList,
    @Default("All") String selectedCategory,
    @Default([]) List<ChatModel> filteredChats,
    @Default(false) bool filteredChatsEmpty,
  }) = _LoadedData;
}
