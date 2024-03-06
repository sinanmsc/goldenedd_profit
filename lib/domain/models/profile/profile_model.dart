import 'package:goldenegg_profit/domain/models/profile/proof_model.dart';

class ProfileModel {
  final String userName;
  final String email;
  final String mobileNo;
  final String adsress;
  final String password;
  final ProofModel proof;

  ProfileModel({
    required this.userName,
    required this.email,
    required this.mobileNo,
    required this.adsress,
    required this.password,
    required this.proof,
  });
}
