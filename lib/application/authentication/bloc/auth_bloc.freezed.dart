// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
    required TResult Function() resendOtp,
    required TResult Function(String mobileNo) sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
    TResult? Function()? resendOtp,
    TResult? Function(String mobileNo)? sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function()? resendOtp,
    TResult Function(String mobileNo)? sendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToSignIn value) toSignIn,
    required TResult Function(_ToSignUp value) toSignUp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_SendOtp value) sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToSignIn value)? toSignIn,
    TResult? Function(_ToSignUp value)? toSignUp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_SendOtp value)? sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToSignInImplCopyWith<$Res> {
  factory _$$ToSignInImplCopyWith(
          _$ToSignInImpl value, $Res Function(_$ToSignInImpl) then) =
      __$$ToSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToSignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ToSignInImpl>
    implements _$$ToSignInImplCopyWith<$Res> {
  __$$ToSignInImplCopyWithImpl(
      _$ToSignInImpl _value, $Res Function(_$ToSignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToSignInImpl implements _ToSignIn {
  const _$ToSignInImpl();

  @override
  String toString() {
    return 'AuthEvent.toSignIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
    required TResult Function() resendOtp,
    required TResult Function(String mobileNo) sendOtp,
  }) {
    return toSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
    TResult? Function()? resendOtp,
    TResult? Function(String mobileNo)? sendOtp,
  }) {
    return toSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function()? resendOtp,
    TResult Function(String mobileNo)? sendOtp,
    required TResult orElse(),
  }) {
    if (toSignIn != null) {
      return toSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToSignIn value) toSignIn,
    required TResult Function(_ToSignUp value) toSignUp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_SendOtp value) sendOtp,
  }) {
    return toSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToSignIn value)? toSignIn,
    TResult? Function(_ToSignUp value)? toSignUp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_SendOtp value)? sendOtp,
  }) {
    return toSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (toSignIn != null) {
      return toSignIn(this);
    }
    return orElse();
  }
}

abstract class _ToSignIn implements AuthEvent {
  const factory _ToSignIn() = _$ToSignInImpl;
}

/// @nodoc
abstract class _$$ToSignUpImplCopyWith<$Res> {
  factory _$$ToSignUpImplCopyWith(
          _$ToSignUpImpl value, $Res Function(_$ToSignUpImpl) then) =
      __$$ToSignUpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToSignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ToSignUpImpl>
    implements _$$ToSignUpImplCopyWith<$Res> {
  __$$ToSignUpImplCopyWithImpl(
      _$ToSignUpImpl _value, $Res Function(_$ToSignUpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToSignUpImpl implements _ToSignUp {
  const _$ToSignUpImpl();

  @override
  String toString() {
    return 'AuthEvent.toSignUp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToSignUpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
    required TResult Function() resendOtp,
    required TResult Function(String mobileNo) sendOtp,
  }) {
    return toSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
    TResult? Function()? resendOtp,
    TResult? Function(String mobileNo)? sendOtp,
  }) {
    return toSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function()? resendOtp,
    TResult Function(String mobileNo)? sendOtp,
    required TResult orElse(),
  }) {
    if (toSignUp != null) {
      return toSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToSignIn value) toSignIn,
    required TResult Function(_ToSignUp value) toSignUp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_SendOtp value) sendOtp,
  }) {
    return toSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToSignIn value)? toSignIn,
    TResult? Function(_ToSignUp value)? toSignUp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_SendOtp value)? sendOtp,
  }) {
    return toSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (toSignUp != null) {
      return toSignUp(this);
    }
    return orElse();
  }
}

abstract class _ToSignUp implements AuthEvent {
  const factory _ToSignUp() = _$ToSignUpImpl;
}

/// @nodoc
abstract class _$$ResendOtpImplCopyWith<$Res> {
  factory _$$ResendOtpImplCopyWith(
          _$ResendOtpImpl value, $Res Function(_$ResendOtpImpl) then) =
      __$$ResendOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResendOtpImpl>
    implements _$$ResendOtpImplCopyWith<$Res> {
  __$$ResendOtpImplCopyWithImpl(
      _$ResendOtpImpl _value, $Res Function(_$ResendOtpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResendOtpImpl implements _ResendOtp {
  const _$ResendOtpImpl();

  @override
  String toString() {
    return 'AuthEvent.resendOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResendOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
    required TResult Function() resendOtp,
    required TResult Function(String mobileNo) sendOtp,
  }) {
    return resendOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
    TResult? Function()? resendOtp,
    TResult? Function(String mobileNo)? sendOtp,
  }) {
    return resendOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function()? resendOtp,
    TResult Function(String mobileNo)? sendOtp,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToSignIn value) toSignIn,
    required TResult Function(_ToSignUp value) toSignUp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_SendOtp value) sendOtp,
  }) {
    return resendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToSignIn value)? toSignIn,
    TResult? Function(_ToSignUp value)? toSignUp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_SendOtp value)? sendOtp,
  }) {
    return resendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(this);
    }
    return orElse();
  }
}

abstract class _ResendOtp implements AuthEvent {
  const factory _ResendOtp() = _$ResendOtpImpl;
}

/// @nodoc
abstract class _$$SendOtpImplCopyWith<$Res> {
  factory _$$SendOtpImplCopyWith(
          _$SendOtpImpl value, $Res Function(_$SendOtpImpl) then) =
      __$$SendOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobileNo});
}

/// @nodoc
class __$$SendOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendOtpImpl>
    implements _$$SendOtpImplCopyWith<$Res> {
  __$$SendOtpImplCopyWithImpl(
      _$SendOtpImpl _value, $Res Function(_$SendOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNo = null,
  }) {
    return _then(_$SendOtpImpl(
      null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendOtpImpl implements _SendOtp {
  const _$SendOtpImpl(this.mobileNo);

  @override
  final String mobileNo;

  @override
  String toString() {
    return 'AuthEvent.sendOtp(mobileNo: $mobileNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpImpl &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpImplCopyWith<_$SendOtpImpl> get copyWith =>
      __$$SendOtpImplCopyWithImpl<_$SendOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
    required TResult Function() resendOtp,
    required TResult Function(String mobileNo) sendOtp,
  }) {
    return sendOtp(mobileNo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
    TResult? Function()? resendOtp,
    TResult? Function(String mobileNo)? sendOtp,
  }) {
    return sendOtp?.call(mobileNo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function()? resendOtp,
    TResult Function(String mobileNo)? sendOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(mobileNo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToSignIn value) toSignIn,
    required TResult Function(_ToSignUp value) toSignUp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_SendOtp value) sendOtp,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToSignIn value)? toSignIn,
    TResult? Function(_ToSignUp value)? toSignUp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_SendOtp value)? sendOtp,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class _SendOtp implements AuthEvent {
  const factory _SendOtp(final String mobileNo) = _$SendOtpImpl;

  String get mobileNo;
  @JsonKey(ignore: true)
  _$$SendOtpImplCopyWith<_$SendOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  bool get isSigned => throw _privateConstructorUsedError;
  int get resendOtpTime => throw _privateConstructorUsedError;
  String get mobileNo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({bool isSigned, int resendOtpTime, String mobileNo});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSigned = null,
    Object? resendOtpTime = null,
    Object? mobileNo = null,
  }) {
    return _then(_value.copyWith(
      isSigned: null == isSigned
          ? _value.isSigned
          : isSigned // ignore: cast_nullable_to_non_nullable
              as bool,
      resendOtpTime: null == resendOtpTime
          ? _value.resendOtpTime
          : resendOtpTime // ignore: cast_nullable_to_non_nullable
              as int,
      mobileNo: null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSigned, int resendOtpTime, String mobileNo});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSigned = null,
    Object? resendOtpTime = null,
    Object? mobileNo = null,
  }) {
    return _then(_$AuthStateImpl(
      isSigned: null == isSigned
          ? _value.isSigned
          : isSigned // ignore: cast_nullable_to_non_nullable
              as bool,
      resendOtpTime: null == resendOtpTime
          ? _value.resendOtpTime
          : resendOtpTime // ignore: cast_nullable_to_non_nullable
              as int,
      mobileNo: null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  _$AuthStateImpl(
      {required this.isSigned,
      required this.resendOtpTime,
      required this.mobileNo});

  @override
  final bool isSigned;
  @override
  final int resendOtpTime;
  @override
  final String mobileNo;

  @override
  String toString() {
    return 'AuthState(isSigned: $isSigned, resendOtpTime: $resendOtpTime, mobileNo: $mobileNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isSigned, isSigned) ||
                other.isSigned == isSigned) &&
            (identical(other.resendOtpTime, resendOtpTime) ||
                other.resendOtpTime == resendOtpTime) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSigned, resendOtpTime, mobileNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState(
      {required final bool isSigned,
      required final int resendOtpTime,
      required final String mobileNo}) = _$AuthStateImpl;

  @override
  bool get isSigned;
  @override
  int get resendOtpTime;
  @override
  String get mobileNo;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
