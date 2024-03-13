part of 'deposit_bloc.dart';

@freezed
class DepositEvent with _$DepositEvent {
  const factory DepositEvent.getDepositData() = _GetDepositData;
}