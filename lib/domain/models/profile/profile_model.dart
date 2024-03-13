import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel{
  ProfileModel._();

  factory ProfileModel({
    required String userName,
    required String email,
    required String mobileNo,
    required String adsress,
    required String password,
    required String proofType,
    required String proofNo,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, Object?> json) =>
      _$ProfileModelFromJson(json);

  factory ProfileModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return ProfileModel.fromJson(data!);
  }

  Map<String, dynamic> toFirestore() {
    return toJson();
  }
}
