part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.toSignIn() = _ToSignIn;
  const factory AuthEvent.toSignUp() = _ToSignUp;
  const factory AuthEvent.resendOtp() = _ResendOtp;
  const factory AuthEvent.sendOtp(String mobileNo) = _SendOtp;
}
