part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  factory PaymentState({required String cardNumber}) = _PaymentState;
  factory PaymentState.initial() {
    return PaymentState(cardNumber: '1234');
  }
}
