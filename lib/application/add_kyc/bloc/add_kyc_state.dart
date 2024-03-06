part of 'add_kyc_bloc.dart';

@freezed
class AddKycState with _$AddKycState {
  factory AddKycState({
    required String proofType,
    required String proofId,
    required String proofImage,
  }) = _AddKycState;

  factory AddKycState.initial() {
    return AddKycState(proofType: 'Aadhar', proofId: '', proofImage: '');
  }
}
