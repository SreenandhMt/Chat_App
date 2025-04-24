import 'package:chat_app/core/exceptions.dart';
import 'package:chat_app/features/auth/services/auth_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.status()) {
    on<_SigninWithPhoneNumber>((event, emit) =>
        _signinWithPhoneNumber(event, emit, state, event.phoneNumber));
    on<_VerifyOTP>((event, emit) => _verifyOTP(event, emit, state, event.otp));
    on<_CreateProfile>((event, emit) => _createProfile(event, emit, state));
    on<_ResetErrorMessage>((event, emit) =>
        emit(state.copyWith(errorMessage: null, isLoading: false)));
  }
}

void _createProfile(
    _CreateProfile? event, Emitter<AuthState> emit, AuthState state) async {
  try {
    emit(state.copyWith(isLoading: true));
    await AuthService.createProfile("${event!.firstName} ${event.lastName}");
    emit(state.copyWith(isLoading: false, profileSuccess: true));
  } on AppException catch (e) {
    emit(state.copyWith(errorMessage: e));
  } catch (e) {
    emit(state.copyWith(errorMessage: UnknownException(details: e.toString())));
  }
}

void _signinWithPhoneNumber(Object? event, Emitter<AuthState> emit,
    AuthState state, String phoneNumber) async {
  try {
    emit(state.copyWith(isLoading: true));
    String verificationId =
        await AuthService.signinWithPhoneNumber(phoneNumber);
    emit(
      state.copyWith(
          isLoading: false,
          verificationId: verificationId,
          phoneNumberSuccess: true),
    );
  } on AppException catch (e) {
    emit(state.copyWith(errorMessage: e));
  } catch (e) {
    emit(state.copyWith(errorMessage: UnknownException(details: e.toString())));
  }
}

void _verifyOTP(Object? event, Emitter<AuthState> emit, AuthState state,
    String smsCode) async {
  try {
    emit(state.copyWith(isLoading: true));
    if (state.verificationId == null || state.verificationId!.isEmpty) {
      emit(state.copyWith(isLoading: false));
      emit(state.copyWith(
          errorMessage:
              UnknownException(details: "Failed to get verification id")));
      return;
    }
    await AuthService.verifyOTP(state.verificationId!, smsCode);
    emit(state.copyWith(isLoading: false, optSuccess: true));
  } on AppException catch (e) {
    emit(state.copyWith(errorMessage: e));
  } catch (e) {
    emit(state.copyWith(errorMessage: UnknownException(details: e.toString())));
  }
}
