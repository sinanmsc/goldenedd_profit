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
    required TResult Function(
            String email, String password, BuildContext context)
        login,
    required TResult Function(String email, String password,
            BuildContext context, ProfileModel user)
        signUp,
    required TResult Function() logOut,
    required TResult Function() resendOtp,
    required TResult Function(String mobileNo) sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
    TResult? Function(String email, String password, BuildContext context)?
        login,
    TResult? Function(String email, String password, BuildContext context,
            ProfileModel user)?
        signUp,
    TResult? Function()? logOut,
    TResult? Function()? resendOtp,
    TResult? Function(String mobileNo)? sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function(String email, String password, BuildContext context,
            ProfileModel user)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? resendOtp,
    TResult Function(String mobileNo)? sendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToSignIn value) toSignIn,
    required TResult Function(_ToSignUp value) toSignUp,
    required TResult Function(_LogIn value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_SendOtp value) sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToSignIn value)? toSignIn,
    TResult? Function(_ToSignUp value)? toSignUp,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_SendOtp value)? sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_LogIn value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
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
    required TResult Function(
            String email, String password, BuildContext context)
        login,
    required TResult Function(String email, String password,
            BuildContext context, ProfileModel user)
        signUp,
    required TResult Function() logOut,
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
    TResult? Function(String email, String password, BuildContext context)?
        login,
    TResult? Function(String email, String password, BuildContext context,
            ProfileModel user)?
        signUp,
    TResult? Function()? logOut,
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
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function(String email, String password, BuildContext context,
            ProfileModel user)?
        signUp,
    TResult Function()? logOut,
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
    required TResult Function(_LogIn value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogOut value) logOut,
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
    TResult? Function(_LogIn value)? login,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_LogOut value)? logOut,
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
    TResult Function(_LogIn value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
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
    required TResult Function(
            String email, String password, BuildContext context)
        login,
    required TResult Function(String email, String password,
            BuildContext context, ProfileModel user)
        signUp,
    required TResult Function() logOut,
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
    TResult? Function(String email, String password, BuildContext context)?
        login,
    TResult? Function(String email, String password, BuildContext context,
            ProfileModel user)?
        signUp,
    TResult? Function()? logOut,
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
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function(String email, String password, BuildContext context,
            ProfileModel user)?
        signUp,
    TResult Function()? logOut,
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
    required TResult Function(_LogIn value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogOut value) logOut,
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
    TResult? Function(_LogIn value)? login,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_LogOut value)? logOut,
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
    TResult Function(_LogIn value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
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
abstract class _$$LogInImplCopyWith<$Res> {
  factory _$$LogInImplCopyWith(
          _$LogInImpl value, $Res Function(_$LogInImpl) then) =
      __$$LogInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, BuildContext context});
}

/// @nodoc
class __$$LogInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogInImpl>
    implements _$$LogInImplCopyWith<$Res> {
  __$$LogInImplCopyWithImpl(
      _$LogInImpl _value, $Res Function(_$LogInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? context = null,
  }) {
    return _then(_$LogInImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$LogInImpl implements _LogIn {
  const _$LogInImpl(this.email, this.password, this.context);

  @override
  final String email;
  @override
  final String password;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.login(email: $email, password: $password, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInImplCopyWith<_$LogInImpl> get copyWith =>
      __$$LogInImplCopyWithImpl<_$LogInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
    required TResult Function(
            String email, String password, BuildContext context)
        login,
    required TResult Function(String email, String password,
            BuildContext context, ProfileModel user)
        signUp,
    required TResult Function() logOut,
    required TResult Function() resendOtp,
    required TResult Function(String mobileNo) sendOtp,
  }) {
    return login(email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
    TResult? Function(String email, String password, BuildContext context)?
        login,
    TResult? Function(String email, String password, BuildContext context,
            ProfileModel user)?
        signUp,
    TResult? Function()? logOut,
    TResult? Function()? resendOtp,
    TResult? Function(String mobileNo)? sendOtp,
  }) {
    return login?.call(email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function(String email, String password, BuildContext context,
            ProfileModel user)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? resendOtp,
    TResult Function(String mobileNo)? sendOtp,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToSignIn value) toSignIn,
    required TResult Function(_ToSignUp value) toSignUp,
    required TResult Function(_LogIn value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_SendOtp value) sendOtp,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToSignIn value)? toSignIn,
    TResult? Function(_ToSignUp value)? toSignUp,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_SendOtp value)? sendOtp,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_LogIn value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _LogIn implements AuthEvent {
  const factory _LogIn(final String email, final String password,
      final BuildContext context) = _$LogInImpl;

  String get email;
  String get password;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$LogInImplCopyWith<_$LogInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email, String password, BuildContext context, ProfileModel user});

  $ProfileModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? context = null,
    Object? user = null,
  }) {
    return _then(_$SignUpImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileModelCopyWith<$Res> get user {
    return $ProfileModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SignUpImpl implements _SignUp {
  const _$SignUpImpl(this.email, this.password, this.context, this.user);

  @override
  final String email;
  @override
  final String password;
  @override
  final BuildContext context;
  @override
  final ProfileModel user;

  @override
  String toString() {
    return 'AuthEvent.signUp(email: $email, password: $password, context: $context, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, context, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
    required TResult Function(
            String email, String password, BuildContext context)
        login,
    required TResult Function(String email, String password,
            BuildContext context, ProfileModel user)
        signUp,
    required TResult Function() logOut,
    required TResult Function() resendOtp,
    required TResult Function(String mobileNo) sendOtp,
  }) {
    return signUp(email, password, context, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
    TResult? Function(String email, String password, BuildContext context)?
        login,
    TResult? Function(String email, String password, BuildContext context,
            ProfileModel user)?
        signUp,
    TResult? Function()? logOut,
    TResult? Function()? resendOtp,
    TResult? Function(String mobileNo)? sendOtp,
  }) {
    return signUp?.call(email, password, context, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function(String email, String password, BuildContext context,
            ProfileModel user)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? resendOtp,
    TResult Function(String mobileNo)? sendOtp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(email, password, context, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToSignIn value) toSignIn,
    required TResult Function(_ToSignUp value) toSignUp,
    required TResult Function(_LogIn value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_SendOtp value) sendOtp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToSignIn value)? toSignIn,
    TResult? Function(_ToSignUp value)? toSignUp,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_SendOtp value)? sendOtp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_LogIn value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthEvent {
  const factory _SignUp(final String email, final String password,
      final BuildContext context, final ProfileModel user) = _$SignUpImpl;

  String get email;
  String get password;
  BuildContext get context;
  ProfileModel get user;
  @JsonKey(ignore: true)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl implements _LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
    required TResult Function(
            String email, String password, BuildContext context)
        login,
    required TResult Function(String email, String password,
            BuildContext context, ProfileModel user)
        signUp,
    required TResult Function() logOut,
    required TResult Function() resendOtp,
    required TResult Function(String mobileNo) sendOtp,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
    TResult? Function(String email, String password, BuildContext context)?
        login,
    TResult? Function(String email, String password, BuildContext context,
            ProfileModel user)?
        signUp,
    TResult? Function()? logOut,
    TResult? Function()? resendOtp,
    TResult? Function(String mobileNo)? sendOtp,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function(String email, String password, BuildContext context,
            ProfileModel user)?
        signUp,
    TResult Function()? logOut,
    TResult Function()? resendOtp,
    TResult Function(String mobileNo)? sendOtp,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToSignIn value) toSignIn,
    required TResult Function(_ToSignUp value) toSignUp,
    required TResult Function(_LogIn value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_SendOtp value) sendOtp,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToSignIn value)? toSignIn,
    TResult? Function(_ToSignUp value)? toSignUp,
    TResult? Function(_LogIn value)? login,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_SendOtp value)? sendOtp,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_LogIn value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements AuthEvent {
  const factory _LogOut() = _$LogOutImpl;
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
    required TResult Function(
            String email, String password, BuildContext context)
        login,
    required TResult Function(String email, String password,
            BuildContext context, ProfileModel user)
        signUp,
    required TResult Function() logOut,
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
    TResult? Function(String email, String password, BuildContext context)?
        login,
    TResult? Function(String email, String password, BuildContext context,
            ProfileModel user)?
        signUp,
    TResult? Function()? logOut,
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
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function(String email, String password, BuildContext context,
            ProfileModel user)?
        signUp,
    TResult Function()? logOut,
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
    required TResult Function(_LogIn value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogOut value) logOut,
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
    TResult? Function(_LogIn value)? login,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_LogOut value)? logOut,
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
    TResult Function(_LogIn value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
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
    required TResult Function(
            String email, String password, BuildContext context)
        login,
    required TResult Function(String email, String password,
            BuildContext context, ProfileModel user)
        signUp,
    required TResult Function() logOut,
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
    TResult? Function(String email, String password, BuildContext context)?
        login,
    TResult? Function(String email, String password, BuildContext context,
            ProfileModel user)?
        signUp,
    TResult? Function()? logOut,
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
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function(String email, String password, BuildContext context,
            ProfileModel user)?
        signUp,
    TResult Function()? logOut,
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
    required TResult Function(_LogIn value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogOut value) logOut,
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
    TResult? Function(_LogIn value)? login,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_LogOut value)? logOut,
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
    TResult Function(_LogIn value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
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
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
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
  $Res call(
      {bool isLoading,
      String errorMsg,
      bool isSigned,
      int resendOtpTime,
      String mobileNo});
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
    Object? isLoading = null,
    Object? errorMsg = null,
    Object? isSigned = null,
    Object? resendOtpTime = null,
    Object? mobileNo = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call(
      {bool isLoading,
      String errorMsg,
      bool isSigned,
      int resendOtpTime,
      String mobileNo});
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
    Object? isLoading = null,
    Object? errorMsg = null,
    Object? isSigned = null,
    Object? resendOtpTime = null,
    Object? mobileNo = null,
  }) {
    return _then(_$AuthStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
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
      {required this.isLoading,
      required this.errorMsg,
      required this.isSigned,
      required this.resendOtpTime,
      required this.mobileNo});

  @override
  final bool isLoading;
  @override
  final String errorMsg;
  @override
  final bool isSigned;
  @override
  final int resendOtpTime;
  @override
  final String mobileNo;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, errorMsg: $errorMsg, isSigned: $isSigned, resendOtpTime: $resendOtpTime, mobileNo: $mobileNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.isSigned, isSigned) ||
                other.isSigned == isSigned) &&
            (identical(other.resendOtpTime, resendOtpTime) ||
                other.resendOtpTime == resendOtpTime) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, errorMsg, isSigned, resendOtpTime, mobileNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState(
      {required final bool isLoading,
      required final String errorMsg,
      required final bool isSigned,
      required final int resendOtpTime,
      required final String mobileNo}) = _$AuthStateImpl;

  @override
  bool get isLoading;
  @override
  String get errorMsg;
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
