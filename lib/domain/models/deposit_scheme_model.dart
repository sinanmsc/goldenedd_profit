import 'package:flutter/material.dart';

class DepositSchemeModel {
  final String title;
  final String amount;
  final String imagePath;
  final String profitAmount;
  const DepositSchemeModel({
    required this.amount,
    required this.title,
    required this.profitAmount,
    required this.imagePath,
  });
}
