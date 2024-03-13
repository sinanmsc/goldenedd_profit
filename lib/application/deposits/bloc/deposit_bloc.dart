import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goldenegg_profit/domain/exception/base_exception.dart';
import 'package:goldenegg_profit/infrastructure/deposit/i_deposit_repository.dart';

import '../../../domain/models/deposit/deposit_model.dart';

part 'deposit_event.dart';
part 'deposit_state.dart';
part 'deposit_bloc.freezed.dart';

class DepositBloc extends Bloc<DepositEvent, DepositState> {
  final IDepositRepo depositRepo;
  DepositBloc({required this.depositRepo}) : super(DepositState.initial()) {
    on<_GetDepositData>((event, emit) async {
      try {
        emit(state.copyWith(isLoading: true));
        await for (var data in depositRepo.getData()) {
          emit(state.copyWith(deposits: data, isLoading: false));
        }
        emit(state.copyWith(isLoading: false));
      } on BaseException catch (e) {
        emit(state.copyWith(errorMsg: e.message, isLoading: false));
      }
    });
  }
}
