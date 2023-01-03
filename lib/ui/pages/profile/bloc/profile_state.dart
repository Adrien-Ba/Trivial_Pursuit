
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/entities/user.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState{
  const factory ProfileState.initial() = Initial;
  const factory ProfileState.loaded({
    required User user,
  }) = Loaded;
  const factory ProfileState.disconnected() = Disconnected;
}