import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'deposit_model.freezed.dart';
part 'deposit_model.g.dart';

@freezed
class DepositModel with _$DepositModel {
  DepositModel._();

  factory DepositModel({
    required String name,
    required double amount,
    required String image,
    required double dailyProfit,
    required String description,
  }) = _DepositModel;

  factory DepositModel.fromJson(Map<String, Object?> json) =>
      _$DepositModelFromJson(json);

  factory DepositModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return DepositModel.fromJson(data!);
  }

  Map<String, dynamic> toFirestore() {
    return toJson();
  }
}
