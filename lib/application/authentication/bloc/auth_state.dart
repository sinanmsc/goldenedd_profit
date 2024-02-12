part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({required bool isSigned}) = _AuthState;
  factory AuthState.initial() {
    return AuthState(isSigned: true);
  }
}
