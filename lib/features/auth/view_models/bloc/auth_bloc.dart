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
  }
}

void _createProfile(
    _CreateProfile? event, Emitter<AuthState> emit, AuthState state) async {
  emit(state.copyWith(isLoading: true));
  await AuthService.createProfile("${event!.firstName} ${event.lastName}");
  emit(state.copyWith(isLoading: false, profileSuccess: true));
}

void _signinWithPhoneNumber(Object? event, Emitter<AuthState> emit,
    AuthState state, String phoneNumber) async {
  emit(state.copyWith(isLoading: true));
  String verificationId = await AuthService.signinWithPhoneNumber(phoneNumber);
  emit(
    state.copyWith(
        isLoading: false, verificationId: verificationId, optSuccess: false),
  );
}

void _verifyOTP(Object? event, Emitter<AuthState> emit, AuthState state,
    String smsCode) async {
  smsCode = "123456";
  await AuthService.verifyOTP(state.verificationId!, smsCode);
  emit(state.copyWith(isLoading: false, optSuccess: true));
}
