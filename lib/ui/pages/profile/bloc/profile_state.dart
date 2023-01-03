import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState{
  const factory ProfileState.initial() = Initial;
  const factory ProfileState.loaded({
    required User user,
  }) = Loaded;
  const factory ProfileState.disconnected() = Disconnected;
}