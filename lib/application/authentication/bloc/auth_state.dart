part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    required bool isLoading,
    required String errorMsg,
    required bool isSigned,
    required int resendOtpTime,
    required String mobileNo,
  }) = _AuthState;

  factory AuthState.initial() {
    return AuthState(
      isLoading: false,
      errorMsg: '',
      isSigned: true,
      mobileNo: '',
      resendOtpTime: 30,
    );
  }
}
