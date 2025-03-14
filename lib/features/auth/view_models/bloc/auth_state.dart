part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.status({
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default(false) bool phoneNumberSuccess,
    @Default(null) String? verificationId,
    @Default(false) bool optSuccess,
    @Default(false) bool profileSuccess,
  }) = _AuthStatus;
}
