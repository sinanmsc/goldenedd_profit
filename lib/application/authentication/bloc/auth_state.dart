part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    required bool isSigned,
    required TextEditingController phoneController,
    required String? errorMsg,
  }) = _AuthState;
  
  factory AuthState.initial() {
    return AuthState(
      isSigned: true,
      phoneController: TextEditingController(),
      errorMsg: null,
    );
  }
}
