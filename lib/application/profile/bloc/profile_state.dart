part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState({required String image,required bool isNewImage}) = _ProfileState;
  factory ProfileState.initial() {
    return ProfileState(image: profileImage,isNewImage: false);
  }
}
