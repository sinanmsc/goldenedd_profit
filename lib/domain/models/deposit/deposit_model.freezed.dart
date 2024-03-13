// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deposit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DepositModel _$DepositModelFromJson(Map<String, dynamic> json) {
  return _DepositModel.fromJson(json);
}

/// @nodoc
mixin _$DepositModel {
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get dailyProfit => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepositModelCopyWith<DepositModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositModelCopyWith<$Res> {
  factory $DepositModelCopyWith(
          DepositModel value, $Res Function(DepositModel) then) =
      _$DepositModelCopyWithImpl<$Res, DepositModel>;
  @useResult
  $Res call(
      {String name,
      double amount,
      String image,
      double dailyProfit,
      String description});
}

/// @nodoc
class _$DepositModelCopyWithImpl<$Res, $Val extends DepositModel>
    implements $DepositModelCopyWith<$Res> {
  _$DepositModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? image = null,
    Object? dailyProfit = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      dailyProfit: null == dailyProfit
          ? _value.dailyProfit
          : dailyProfit // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepositModelImplCopyWith<$Res>
    implements $DepositModelCopyWith<$Res> {
  factory _$$DepositModelImplCopyWith(
          _$DepositModelImpl value, $Res Function(_$DepositModelImpl) then) =
      __$$DepositModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      double amount,
      String image,
      double dailyProfit,
      String description});
}

/// @nodoc
class __$$DepositModelImplCopyWithImpl<$Res>
    extends _$DepositModelCopyWithImpl<$Res, _$DepositModelImpl>
    implements _$$DepositModelImplCopyWith<$Res> {
  __$$DepositModelImplCopyWithImpl(
      _$DepositModelImpl _value, $Res Function(_$DepositModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? image = null,
    Object? dailyProfit = null,
    Object? description = null,
  }) {
    return _then(_$DepositModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      dailyProfit: null == dailyProfit
          ? _value.dailyProfit
          : dailyProfit // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepositModelImpl extends _DepositModel {
  _$DepositModelImpl(
      {required this.name,
      required this.amount,
      required this.image,
      required this.dailyProfit,
      required this.description})
      : super._();

  factory _$DepositModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepositModelImplFromJson(json);

  @override
  final String name;
  @override
  final double amount;
  @override
  final String image;
  @override
  final double dailyProfit;
  @override
  final String description;

  @override
  String toString() {
    return 'DepositModel(name: $name, amount: $amount, image: $image, dailyProfit: $dailyProfit, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepositModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.dailyProfit, dailyProfit) ||
                other.dailyProfit == dailyProfit) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, amount, image, dailyProfit, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepositModelImplCopyWith<_$DepositModelImpl> get copyWith =>
      __$$DepositModelImplCopyWithImpl<_$DepositModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepositModelImplToJson(
      this,
    );
  }
}

abstract class _DepositModel extends DepositModel {
  factory _DepositModel(
      {required final String name,
      required final double amount,
      required final String image,
      required final double dailyProfit,
      required final String description}) = _$DepositModelImpl;
  _DepositModel._() : super._();

  factory _DepositModel.fromJson(Map<String, dynamic> json) =
      _$DepositModelImpl.fromJson;

  @override
  String get name;
  @override
  double get amount;
  @override
  String get image;
  @override
  double get dailyProfit;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$DepositModelImplCopyWith<_$DepositModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
