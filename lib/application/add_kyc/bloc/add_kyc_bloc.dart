import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_kyc_event.dart';
part 'add_kyc_state.dart';
part 'add_kyc_bloc.freezed.dart';

class AddKycBloc extends Bloc<AddKycEvent, AddKycState> {
  AddKycBloc() : super(AddKycState.initial()) {
    on<_Add>((event, emit) {
      emit(state.copyWith(
        proofType: event.proofType,
        proofId: event.prrofId,
        proofImage: event.proofImage,
      ));
      if (state.proofId.isNotEmpty) {
        if (state.proofImage.isEmpty) {
          ScaffoldMessenger.of(event.context).showSnackBar(
              const SnackBar(content: Text('Pleas add proof image')));
        } else {
          Navigator.pop(event.context);
        }
      } else {
        ScaffoldMessenger.of(event.context)
            .showSnackBar(const SnackBar(content: Text('Pleas add proof id')));
      }
    });
  }
}
