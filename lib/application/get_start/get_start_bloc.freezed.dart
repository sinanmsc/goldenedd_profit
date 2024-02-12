// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_start_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetStartEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) getIndexEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? getIndexEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? getIndexEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetIndexEvent value) getIndexEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetIndexEvent value)? getIndexEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetIndexEvent value)? getIndexEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetStartEventCopyWith<GetStartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStartEventCopyWith<$Res> {
  factory $GetStartEventCopyWith(
          GetStartEvent value, $Res Function(GetStartEvent) then) =
      _$GetStartEventCopyWithImpl<$Res, GetStartEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$GetStartEventCopyWithImpl<$Res, $Val extends GetStartEvent>
    implements $GetStartEventCopyWith<$Res> {
  _$GetStartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetIndexEventImplCopyWith<$Res>
    implements $GetStartEventCopyWith<$Res> {
  factory _$$GetIndexEventImplCopyWith(
          _$GetIndexEventImpl value, $Res Function(_$GetIndexEventImpl) then) =
      __$$GetIndexEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$GetIndexEventImplCopyWithImpl<$Res>
    extends _$GetStartEventCopyWithImpl<$Res, _$GetIndexEventImpl>
    implements _$$GetIndexEventImplCopyWith<$Res> {
  __$$GetIndexEventImplCopyWithImpl(
      _$GetIndexEventImpl _value, $Res Function(_$GetIndexEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$GetIndexEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetIndexEventImpl implements _GetIndexEvent {
  const _$GetIndexEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'GetStartEvent.getIndexEvent(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetIndexEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetIndexEventImplCopyWith<_$GetIndexEventImpl> get copyWith =>
      __$$GetIndexEventImplCopyWithImpl<_$GetIndexEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) getIndexEvent,
  }) {
    return getIndexEvent(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? getIndexEvent,
  }) {
    return getIndexEvent?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? getIndexEvent,
    required TResult orElse(),
  }) {
    if (getIndexEvent != null) {
      return getIndexEvent(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetIndexEvent value) getIndexEvent,
  }) {
    return getIndexEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetIndexEvent value)? getIndexEvent,
  }) {
    return getIndexEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetIndexEvent value)? getIndexEvent,
    required TResult orElse(),
  }) {
    if (getIndexEvent != null) {
      return getIndexEvent(this);
    }
    return orElse();
  }
}

abstract class _GetIndexEvent implements GetStartEvent {
  const factory _GetIndexEvent(final int index) = _$GetIndexEventImpl;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$GetIndexEventImplCopyWith<_$GetIndexEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetStartState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetStartStateCopyWith<GetStartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStartStateCopyWith<$Res> {
  factory $GetStartStateCopyWith(
          GetStartState value, $Res Function(GetStartState) then) =
      _$GetStartStateCopyWithImpl<$Res, GetStartState>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$GetStartStateCopyWithImpl<$Res, $Val extends GetStartState>
    implements $GetStartStateCopyWith<$Res> {
  _$GetStartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetStartStateImplCopyWith<$Res>
    implements $GetStartStateCopyWith<$Res> {
  factory _$$GetStartStateImplCopyWith(
          _$GetStartStateImpl value, $Res Function(_$GetStartStateImpl) then) =
      __$$GetStartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$GetStartStateImplCopyWithImpl<$Res>
    extends _$GetStartStateCopyWithImpl<$Res, _$GetStartStateImpl>
    implements _$$GetStartStateImplCopyWith<$Res> {
  __$$GetStartStateImplCopyWithImpl(
      _$GetStartStateImpl _value, $Res Function(_$GetStartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$GetStartStateImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetStartStateImpl implements _GetStartState {
  _$GetStartStateImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'GetStartState(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStartStateImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStartStateImplCopyWith<_$GetStartStateImpl> get copyWith =>
      __$$GetStartStateImplCopyWithImpl<_$GetStartStateImpl>(this, _$identity);
}

abstract class _GetStartState implements GetStartState {
  factory _GetStartState({required final int index}) = _$GetStartStateImpl;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$GetStartStateImplCopyWith<_$GetStartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
