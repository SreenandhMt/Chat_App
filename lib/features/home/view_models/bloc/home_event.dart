part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.getAllData() = _getAllData;
  const factory HomeEvent.loadUserData({required List<QueryDocumentSnapshot<Map<String, dynamic>>> docs}) =
      _LoadUserData;
}
