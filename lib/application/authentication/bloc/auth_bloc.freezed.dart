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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToSignIn value) toSignIn,
    required TResult Function(_ToSignUp value) toSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToSignIn value)? toSignIn,
    TResult? Function(_ToSignUp value)? toSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
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
  }) {
    return toSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
  }) {
    return toSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
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
  }) {
    return toSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToSignIn value)? toSignIn,
    TResult? Function(_ToSignUp value)? toSignUp,
  }) {
    return toSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
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
  }) {
    return toSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
  }) {
    return toSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
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
  }) {
    return toSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToSignIn value)? toSignIn,
    TResult? Function(_ToSignUp value)? toSignUp,
  }) {
    return toSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
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
mixin _$AuthState {
  bool get isSigned => throw _privateConstructorUsedError;
  TextEditingController get phoneController =>
      throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isSigned, TextEditingController phoneController, String? errorMsg});
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
    Object? phoneController = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      isSigned: null == isSigned
          ? _value.isSigned
          : isSigned // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneController: null == phoneController
          ? _value.phoneController
          : phoneController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call(
      {bool isSigned, TextEditingController phoneController, String? errorMsg});
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
    Object? phoneController = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_$AuthStateImpl(
      isSigned: null == isSigned
          ? _value.isSigned
          : isSigned // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneController: null == phoneController
          ? _value.phoneController
          : phoneController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  _$AuthStateImpl(
      {required this.isSigned,
      required this.phoneController,
      required this.errorMsg});

  @override
  final bool isSigned;
  @override
  final TextEditingController phoneController;
  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'AuthState(isSigned: $isSigned, phoneController: $phoneController, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isSigned, isSigned) ||
                other.isSigned == isSigned) &&
            (identical(other.phoneController, phoneController) ||
                other.phoneController == phoneController) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSigned, phoneController, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState(
      {required final bool isSigned,
      required final TextEditingController phoneController,
      required final String? errorMsg}) = _$AuthStateImpl;

  @override
  bool get isSigned;
  @override
  TextEditingController get phoneController;
  @override
  String? get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
