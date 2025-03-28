part of 'calling_bloc.dart';

@freezed
class CallingState with _$CallingState {
  const factory CallingState.callingPageState(
      {@Default(false) isLoading,
      @Default(false) bool isError,
      @Default("") String errorMsg,
      @Default("") String callingPageMsg,
      @Default(null) Stream<QuerySnapshot<Map<String, dynamic>>>? stream,
      @Default(null) CallModel? currentCall,
      @Default(null) CallModel? selectedCall,
      @Default([]) List<CallModel> activeCalls,
      @Default([]) List<RemoteUserModel> remoteUsers,
      @Default(false) bool localUserJoined,
      @Default([]) List<UserModels> selectedCallUsers,
      @Default([]) List<CallModel> selectedCallHistory,
      @Default([]) List<CallModel> callHistory}) = _CallingPageState;
}
