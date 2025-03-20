part of 'calling_bloc.dart';

@freezed
class CallingEvent with _$CallingEvent {
  const factory CallingEvent.started() = _Started;
}