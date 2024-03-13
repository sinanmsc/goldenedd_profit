// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      userName: json['userName'] as String,
      email: json['email'] as String,
      mobileNo: json['mobileNo'] as String,
      adsress: json['adsress'] as String,
      password: json['password'] as String,
      proofType: json['proofType'] as String,
      proofNo: json['proofNo'] as String,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'email': instance.email,
      'mobileNo': instance.mobileNo,
      'adsress': instance.adsress,
      'password': instance.password,
      'proofType': instance.proofType,
      'proofNo': instance.proofNo,
    };
