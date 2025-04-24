part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.getAllData() = _getAllData;
  const factory HomeEvent.filterCategoryUsers({required String category}) =
      _FilterCategoryUsers;
  const factory HomeEvent.loadUserData(
          {required List<QueryDocumentSnapshot<Map<String, dynamic>>> docs}) =
      _LoadUserData;

  const factory HomeEvent.clearError() = _ClearError;
}
