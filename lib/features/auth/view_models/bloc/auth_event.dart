part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.signinWithPhoneNumber(String phoneNumber) =
      _SigninWithPhoneNumber;
  const factory AuthEvent.verifyOTP(String otp) = _VerifyOTP;
  const factory AuthEvent.createProfile(
      String firstName, String? lastName, String? filePath) = _CreateProfile;
  const factory AuthEvent.resendOTP() = _ResendOTP;
  const factory AuthEvent.signOut() = _SignOut;
  const factory AuthEvent.resetErrorMessage() = _ResetErrorMessage;
}
