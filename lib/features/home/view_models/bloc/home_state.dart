part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState.loadedData({
    @Default(false) bool isLoading,
    @Default("") String errorMessage,
    @Default([]) List<Map<String, dynamic>> chatsModels,
    @Default(null) Stream<QuerySnapshot<Map<String, dynamic>>>? chatsStream,
  }) = _LoadedData;
}
