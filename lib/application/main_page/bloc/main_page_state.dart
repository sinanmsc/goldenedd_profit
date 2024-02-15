part of 'main_page_bloc.dart';

@freezed
class MainPageState with _$MainPageState {
  factory MainPageState({required int index}) = _MainPageState;
  factory MainPageState.initial() {
    return MainPageState(index: 0);
  }
}
