// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_kyc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddKycEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  String get proofType => throw _privateConstructorUsedError;
  String get prrofId => throw _privateConstructorUsedError;
  String get proofImage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String proofType,
            String prrofId, String proofImage)
        add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String proofType, String prrofId,
            String proofImage)?
        add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String proofType, String prrofId,
            String proofImage)?
        add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddKycEventCopyWith<AddKycEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddKycEventCopyWith<$Res> {
  factory $AddKycEventCopyWith(
          AddKycEvent value, $Res Function(AddKycEvent) then) =
      _$AddKycEventCopyWithImpl<$Res, AddKycEvent>;
  @useResult
  $Res call(
      {BuildContext context,
      String proofType,
      String prrofId,
      String proofImage});
}

/// @nodoc
class _$AddKycEventCopyWithImpl<$Res, $Val extends AddKycEvent>
    implements $AddKycEventCopyWith<$Res> {
  _$AddKycEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? proofType = null,
    Object? prrofId = null,
    Object? proofImage = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      proofType: null == proofType
          ? _value.proofType
          : proofType // ignore: cast_nullable_to_non_nullable
              as String,
      prrofId: null == prrofId
          ? _value.prrofId
          : prrofId // ignore: cast_nullable_to_non_nullable
              as String,
      proofImage: null == proofImage
          ? _value.proofImage
          : proofImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> implements $AddKycEventCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BuildContext context,
      String proofType,
      String prrofId,
      String proofImage});
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$AddKycEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? proofType = null,
    Object? prrofId = null,
    Object? proofImage = null,
  }) {
    return _then(_$AddImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == proofType
          ? _value.proofType
          : proofType // ignore: cast_nullable_to_non_nullable
              as String,
      null == prrofId
          ? _value.prrofId
          : prrofId // ignore: cast_nullable_to_non_nullable
              as String,
      null == proofImage
          ? _value.proofImage
          : proofImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl(this.context, this.proofType, this.prrofId, this.proofImage);

  @override
  final BuildContext context;
  @override
  final String proofType;
  @override
  final String prrofId;
  @override
  final String proofImage;

  @override
  String toString() {
    return 'AddKycEvent.add(context: $context, proofType: $proofType, prrofId: $prrofId, proofImage: $proofImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.proofType, proofType) ||
                other.proofType == proofType) &&
            (identical(other.prrofId, prrofId) || other.prrofId == prrofId) &&
            (identical(other.proofImage, proofImage) ||
                other.proofImage == proofImage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, proofType, prrofId, proofImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String proofType,
            String prrofId, String proofImage)
        add,
  }) {
    return add(context, proofType, prrofId, proofImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String proofType, String prrofId,
            String proofImage)?
        add,
  }) {
    return add?.call(context, proofType, prrofId, proofImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String proofType, String prrofId,
            String proofImage)?
        add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(context, proofType, prrofId, proofImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements AddKycEvent {
  const factory _Add(final BuildContext context, final String proofType,
      final String prrofId, final String proofImage) = _$AddImpl;

  @override
  BuildContext get context;
  @override
  String get proofType;
  @override
  String get prrofId;
  @override
  String get proofImage;
  @override
  @JsonKey(ignore: true)
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddKycState {
  String get proofType => throw _privateConstructorUsedError;
  String get proofId => throw _privateConstructorUsedError;
  String get proofImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddKycStateCopyWith<AddKycState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddKycStateCopyWith<$Res> {
  factory $AddKycStateCopyWith(
          AddKycState value, $Res Function(AddKycState) then) =
      _$AddKycStateCopyWithImpl<$Res, AddKycState>;
  @useResult
  $Res call({String proofType, String proofId, String proofImage});
}

/// @nodoc
class _$AddKycStateCopyWithImpl<$Res, $Val extends AddKycState>
    implements $AddKycStateCopyWith<$Res> {
  _$AddKycStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proofType = null,
    Object? proofId = null,
    Object? proofImage = null,
  }) {
    return _then(_value.copyWith(
      proofType: null == proofType
          ? _value.proofType
          : proofType // ignore: cast_nullable_to_non_nullable
              as String,
      proofId: null == proofId
          ? _value.proofId
          : proofId // ignore: cast_nullable_to_non_nullable
              as String,
      proofImage: null == proofImage
          ? _value.proofImage
          : proofImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddKycStateImplCopyWith<$Res>
    implements $AddKycStateCopyWith<$Res> {
  factory _$$AddKycStateImplCopyWith(
          _$AddKycStateImpl value, $Res Function(_$AddKycStateImpl) then) =
      __$$AddKycStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String proofType, String proofId, String proofImage});
}

/// @nodoc
class __$$AddKycStateImplCopyWithImpl<$Res>
    extends _$AddKycStateCopyWithImpl<$Res, _$AddKycStateImpl>
    implements _$$AddKycStateImplCopyWith<$Res> {
  __$$AddKycStateImplCopyWithImpl(
      _$AddKycStateImpl _value, $Res Function(_$AddKycStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proofType = null,
    Object? proofId = null,
    Object? proofImage = null,
  }) {
    return _then(_$AddKycStateImpl(
      proofType: null == proofType
          ? _value.proofType
          : proofType // ignore: cast_nullable_to_non_nullable
              as String,
      proofId: null == proofId
          ? _value.proofId
          : proofId // ignore: cast_nullable_to_non_nullable
              as String,
      proofImage: null == proofImage
          ? _value.proofImage
          : proofImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddKycStateImpl implements _AddKycState {
  _$AddKycStateImpl(
      {required this.proofType,
      required this.proofId,
      required this.proofImage});

  @override
  final String proofType;
  @override
  final String proofId;
  @override
  final String proofImage;

  @override
  String toString() {
    return 'AddKycState(proofType: $proofType, proofId: $proofId, proofImage: $proofImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddKycStateImpl &&
            (identical(other.proofType, proofType) ||
                other.proofType == proofType) &&
            (identical(other.proofId, proofId) || other.proofId == proofId) &&
            (identical(other.proofImage, proofImage) ||
                other.proofImage == proofImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, proofType, proofId, proofImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddKycStateImplCopyWith<_$AddKycStateImpl> get copyWith =>
      __$$AddKycStateImplCopyWithImpl<_$AddKycStateImpl>(this, _$identity);
}

abstract class _AddKycState implements AddKycState {
  factory _AddKycState(
      {required final String proofType,
      required final String proofId,
      required final String proofImage}) = _$AddKycStateImpl;

  @override
  String get proofType;
  @override
  String get proofId;
  @override
  String get proofImage;
  @override
  @JsonKey(ignore: true)
  _$$AddKycStateImplCopyWith<_$AddKycStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
