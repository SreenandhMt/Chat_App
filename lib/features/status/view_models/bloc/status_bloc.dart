import 'package:bloc/bloc.dart';
import 'package:chat_app/core/exceptions.dart';
import 'package:chat_app/features/status/models/status_model.dart';
import 'package:chat_app/features/status/services/status_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_event.dart';
part 'status_state.dart';
part 'status_bloc.freezed.dart';

class StatusBloc extends Bloc<StatusEvent, StatusState> {
  StatusBloc() : super(_StatusData()) {
    on<_CreateStatus>((event, emit) => _createStatus(event, emit, state));
    on<_GetStatuses>((event, emit) => _getStatuses(event, emit, state));
    on<_SelectStatus>((event, emit) => _selectStatus(event, emit, state));
    on<_UpdateViews>((event, emit) => _updateViews(event, emit, state));
    on<_SelectFile>((event, emit) {
      emit(state.copyWith(selectedFilePath: event.path));
    });
    on<_ClearErrorMessage>((event, emit) {
      emit(state.copyWith(error: null, isLoading: false));
    });
    on<_CreateTextStatus>((event, emit) async {
      try {
        emit(state.copyWith(isLoading: true));
        await StatusService.createTextStatus(
            event.text, event.colorIndex, event.styleIndex, event.caption);
        final userStatus = await StatusService.getMyStatuses();
        emit(state.copyWith(myStatus: userStatus!, isLoading: false));
      } on AppException catch (e) {
        emit(state.copyWith(error: e, isLoading: false));
      } catch (e) {
        emit(state.copyWith(
            error: UnknownException(details: e.toString()), isLoading: false));
      }
    });
  }

  void _createStatus(
      _CreateStatus event, Emitter<StatusState> emit, StatusState state) async {
    try {
      emit(state.copyWith(isLoading: true));
      await StatusService.createStatus(event.path, event.caption);
      final userStatus = await StatusService.getMyStatuses();
      if (userStatus == null) return;
      emit(state.copyWith(myStatus: userStatus, isLoading: false));
    } on AppException catch (e) {
      emit(state.copyWith(error: e, isLoading: false));
    } catch (e) {
      emit(state.copyWith(
          error: UnknownException(details: e.toString()), isLoading: false));
    }
  }

  void _getStatuses(
      _GetStatuses event, Emitter<StatusState> emit, StatusState state) async {
    try {
      final response = await StatusService.getStatuses();
      final userStatus = await StatusService.getMyStatuses();
      if (response != null) {
        final viewedStatus = response["viewed"];
        final newStatus = response["new"];
        emit(state.copyWith(
            statuses: newStatus,
            viewedStatus: viewedStatus,
            myStatus: userStatus ?? []));
      } else {
        emit(state.copyWith(myStatus: userStatus ?? []));
      }
    } on AppException catch (e) {
      emit(state.copyWith(error: e));
    } catch (e) {
      emit(state.copyWith(error: UnknownException(details: e.toString())));
    }
  }

  void _selectStatus(
      _SelectStatus event, Emitter<StatusState> emit, StatusState state) async {
    emit(state.copyWith(selectedStatus: event.value));
  }

  void _updateViews(
      _UpdateViews event, Emitter<StatusState> emit, StatusState state) async {
    try {
      StatusService.updateViews(event.statusId);
      final response = await StatusService.updateStatus(event.uid);

      if ((response!["isViewed"] as int) <
          (response["status"] as List).length) {
        final updatedStatuses =
            Map<String, Map<String, dynamic>>.from(state.statuses)
              ..[event.uid] = response;
        emit(state.copyWith(statuses: updatedStatuses));
      } else {
        final updatedStatuses =
            Map<String, Map<String, dynamic>>.from(state.viewedStatus)
              ..[event.uid] = response;
        final updatedNewStatuses =
            Map<String, Map<String, dynamic>>.from(state.statuses)
              ..remove(event.uid);
        emit(state.copyWith(
            viewedStatus: updatedStatuses, statuses: updatedNewStatuses));
      }
    } on AppException catch (e) {
      emit(state.copyWith(error: e));
    } catch (e) {
      emit(state.copyWith(error: UnknownException(details: e.toString())));
    }
  }
}
