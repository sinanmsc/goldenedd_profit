part of 'otp_bloc.dart';

@freezed
class OtpState with _$OtpState {
  factory OtpState({required String number}) = _OtpState;
  factory OtpState.initial() {
    return OtpState(number: '');
  }
}
