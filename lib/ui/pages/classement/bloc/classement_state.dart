import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/entities/user.dart';

part 'classement_state.freezed.dart';

@freezed
class ClassementState with _$ClassementState{
  const factory ClassementState.initial() = Initial;
  const factory ClassementState.loaded({
    required QuerySnapshot<User> listUsers,
}) = Loaded;
  const factory ClassementState.error() = Error;
}