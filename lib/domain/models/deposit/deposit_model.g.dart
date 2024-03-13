// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DepositModelImpl _$$DepositModelImplFromJson(Map<String, dynamic> json) =>
    _$DepositModelImpl(
      name: json['name'] as String,
      amount: (json['amount'] as num).toDouble(),
      image: json['image'] as String,
      dailyProfit: (json['dailyProfit'] as num).toDouble(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$DepositModelImplToJson(_$DepositModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'image': instance.image,
      'dailyProfit': instance.dailyProfit,
      'description': instance.description,
    };
