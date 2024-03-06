part of 'add_kyc_bloc.dart';

@freezed
class AddKycEvent with _$AddKycEvent {
  const factory AddKycEvent.add(BuildContext context,String proofType,String prrofId,String proofImage) = _Add;
}