import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<_ToSignIn>((event, emit) {
      emit(state.copyWith(isSigned: true));
    });

    on<_ToSignUp>((event, emit) {
      emit(state.copyWith(isSigned: false));
    });
  }
}
