part of 'status_bloc.dart';

@freezed
class StatusEvent with _$StatusEvent {
  const factory StatusEvent.started() = _Started;
  const factory StatusEvent.createStatus(
      {required String path, String? caption}) = _CreateStatus;
  const factory StatusEvent.getStatuses() = _GetStatuses;
  const factory StatusEvent.selectStatus(
      {required Map<String, dynamic> value}) = _SelectStatus;
  const factory StatusEvent.selectFile({required String path}) = _SelectFile;
  const factory StatusEvent.createTextStatus(
      {required String text,
      required int colorIndex,
      required int styleIndex,
      String? caption}) = _CreateTextStatus;
  const factory StatusEvent.updateViews(
      {required String uid, required String statusId}) = _UpdateViews;
  const factory StatusEvent.clearErrorMessage() = _ClearErrorMessage;
}
