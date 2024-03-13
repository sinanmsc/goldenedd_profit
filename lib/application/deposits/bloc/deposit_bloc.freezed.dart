// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deposit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DepositEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDepositData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDepositData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDepositData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDepositData value) getDepositData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDepositData value)? getDepositData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDepositData value)? getDepositData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositEventCopyWith<$Res> {
  factory $DepositEventCopyWith(
          DepositEvent value, $Res Function(DepositEvent) then) =
      _$DepositEventCopyWithImpl<$Res, DepositEvent>;
}

/// @nodoc
class _$DepositEventCopyWithImpl<$Res, $Val extends DepositEvent>
    implements $DepositEventCopyWith<$Res> {
  _$DepositEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDepositDataImplCopyWith<$Res> {
  factory _$$GetDepositDataImplCopyWith(_$GetDepositDataImpl value,
          $Res Function(_$GetDepositDataImpl) then) =
      __$$GetDepositDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDepositDataImplCopyWithImpl<$Res>
    extends _$DepositEventCopyWithImpl<$Res, _$GetDepositDataImpl>
    implements _$$GetDepositDataImplCopyWith<$Res> {
  __$$GetDepositDataImplCopyWithImpl(
      _$GetDepositDataImpl _value, $Res Function(_$GetDepositDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDepositDataImpl implements _GetDepositData {
  const _$GetDepositDataImpl();

  @override
  String toString() {
    return 'DepositEvent.getDepositData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDepositDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDepositData,
  }) {
    return getDepositData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDepositData,
  }) {
    return getDepositData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDepositData,
    required TResult orElse(),
  }) {
    if (getDepositData != null) {
      return getDepositData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDepositData value) getDepositData,
  }) {
    return getDepositData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDepositData value)? getDepositData,
  }) {
    return getDepositData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDepositData value)? getDepositData,
    required TResult orElse(),
  }) {
    if (getDepositData != null) {
      return getDepositData(this);
    }
    return orElse();
  }
}

abstract class _GetDepositData implements DepositEvent {
  const factory _GetDepositData() = _$GetDepositDataImpl;
}

/// @nodoc
mixin _$DepositState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<DepositModel> get deposits => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DepositStateCopyWith<DepositState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositStateCopyWith<$Res> {
  factory $DepositStateCopyWith(
          DepositState value, $Res Function(DepositState) then) =
      _$DepositStateCopyWithImpl<$Res, DepositState>;
  @useResult
  $Res call({bool isLoading, List<DepositModel> deposits, String errorMsg});
}

/// @nodoc
class _$DepositStateCopyWithImpl<$Res, $Val extends DepositState>
    implements $DepositStateCopyWith<$Res> {
  _$DepositStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? deposits = null,
    Object? errorMsg = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      deposits: null == deposits
          ? _value.deposits
          : deposits // ignore: cast_nullable_to_non_nullable
              as List<DepositModel>,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepositStateImplCopyWith<$Res>
    implements $DepositStateCopyWith<$Res> {
  factory _$$DepositStateImplCopyWith(
          _$DepositStateImpl value, $Res Function(_$DepositStateImpl) then) =
      __$$DepositStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<DepositModel> deposits, String errorMsg});
}

/// @nodoc
class __$$DepositStateImplCopyWithImpl<$Res>
    extends _$DepositStateCopyWithImpl<$Res, _$DepositStateImpl>
    implements _$$DepositStateImplCopyWith<$Res> {
  __$$DepositStateImplCopyWithImpl(
      _$DepositStateImpl _value, $Res Function(_$DepositStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? deposits = null,
    Object? errorMsg = null,
  }) {
    return _then(_$DepositStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      deposits: null == deposits
          ? _value._deposits
          : deposits // ignore: cast_nullable_to_non_nullable
              as List<DepositModel>,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DepositStateImpl implements _DepositState {
  _$DepositStateImpl(
      {required this.isLoading,
      required final List<DepositModel> deposits,
      required this.errorMsg})
      : _deposits = deposits;

  @override
  final bool isLoading;
  final List<DepositModel> _deposits;
  @override
  List<DepositModel> get deposits {
    if (_deposits is EqualUnmodifiableListView) return _deposits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deposits);
  }

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'DepositState(isLoading: $isLoading, deposits: $deposits, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepositStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._deposits, _deposits) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_deposits), errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepositStateImplCopyWith<_$DepositStateImpl> get copyWith =>
      __$$DepositStateImplCopyWithImpl<_$DepositStateImpl>(this, _$identity);
}

abstract class _DepositState implements DepositState {
  factory _DepositState(
      {required final bool isLoading,
      required final List<DepositModel> deposits,
      required final String errorMsg}) = _$DepositStateImpl;

  @override
  bool get isLoading;
  @override
  List<DepositModel> get deposits;
  @override
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$DepositStateImplCopyWith<_$DepositStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
