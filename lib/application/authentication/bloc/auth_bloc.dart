import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goldenegg_profit/domain/exception/base_exception.dart';
import 'package:goldenegg_profit/domain/models/profile/profile_model.dart';
import 'package:goldenegg_profit/infrastructure/authentication/i_authentication_repository.dart';

import '../../../domain/router/router.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthenticationRepo authRep;
  AuthBloc({required this.authRep}) : super(AuthState.initial()) {
    on<_ToSignIn>((event, emit) {
      emit(state.copyWith(isSigned: true));
    });

    on<_ToSignUp>((event, emit) {
      emit(state.copyWith(isSigned: false));
    });

    on<_ResendOtp>((event, emit) {
      emit(state.copyWith(resendOtpTime: state.resendOtpTime - 1));
    });

    on<_SendOtp>((event, emit) {
      emit(state.copyWith(mobileNo: event.mobileNo));
    });

    on<_LogIn>((event, emit) async {
      try {
        emit(state.copyWith(isLoading: true));
        await authRep.login(event.email, event.password);
        emit(state.copyWith(isLoading: false));
        Future.sync(() => Navigator.pushNamedAndRemoveUntil(
            event.context, RoutPaths.mainPage, (route) => false));
      } on BaseException catch (e) {
        log('login: ${e.message}');
        emit(state.copyWith(errorMsg: e.message.toString(), isLoading: false));
        Future.sync(() => ScaffoldMessenger.of(event.context)
            .showSnackBar(SnackBar(content: Text(e.message))));
      }
    });

    on<_SignUp>((event, emit) async {
      try {
        emit(state.copyWith(isLoading: true));
        await authRep.signup(event.email, event.password);
        await authRep.addUser(event.user);
        emit(state.copyWith(isLoading: false));
        Future.sync(() => Navigator.pushNamed(
            event.context, RoutPaths.successfullRegistrationPage));
        log('signuped');
      } on BaseException catch (e) {
        log('signup: ${e.message}');
        emit(state.copyWith(errorMsg: e.message.toString(), isLoading: false));
        Future.sync(() => ScaffoldMessenger.of(event.context)
            .showSnackBar(SnackBar(content: Text(e.message))));
      }
    });

    on<_LogOut>((event, emit) async {
      try {
        await authRep.logout();
      } on BaseException catch (e) {
        emit(state.copyWith(errorMsg: e.message.toString()));
      }
    });
  }
}
