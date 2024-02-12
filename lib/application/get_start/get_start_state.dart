part of 'get_start_bloc.dart';

@freezed
class GetStartState with _$GetStartState {
  factory GetStartState({required int index}) = _GetStartState;

  factory GetStartState.initial() {
    return GetStartState(index: 0);
  }
}
