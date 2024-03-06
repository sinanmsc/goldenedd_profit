import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goldenegg_profit/domain/constants/profile_constants.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<_ChangeImage>((event, emit) {
      emit(state.copyWith(isNewImage: true, image: event.image));
    });
  }
}


ValueNotifier<String> imageValue = ValueNotifier('');
ValueNotifier<String> proofImage = ValueNotifier('');
ValueNotifier<String> savedImageValue = ValueNotifier('');
ValueNotifier<String> proofType = ValueNotifier('Aadhar');
