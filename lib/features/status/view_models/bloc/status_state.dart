part of 'status_bloc.dart';

@freezed
class StatusState with _$StatusState {
  const factory StatusState.statuses(
      {@Default({}) Map<String, dynamic> statuses,
      @Default({}) Map<String, dynamic> viewedStatus,
      @Default([]) List<StatusModel> myStatus,
      @Default("") String selectedFilePath,
      @Default({}) Map<String, dynamic> selectedStatus}) = _StatusData;
}
