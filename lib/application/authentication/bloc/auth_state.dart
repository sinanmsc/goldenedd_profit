part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState(
      {required bool isSigned,
      required int resendOtpTime,
      required String mobileNo,}) = _AuthState;

  factory AuthState.initial() {
    return AuthState(
        isSigned: true,
        mobileNo: '',
        resendOtpTime: 30,);
  }
}
