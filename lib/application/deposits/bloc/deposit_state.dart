part of 'deposit_bloc.dart';

@freezed
class DepositState with _$DepositState {
  factory DepositState({
    required bool isLoading,
    required List<DepositModel> deposits,
    required String errorMsg,
  }) = _DepositState;

  factory DepositState.initial() {
    return DepositState(isLoading: false, deposits: [], errorMsg: '');
  }
}
