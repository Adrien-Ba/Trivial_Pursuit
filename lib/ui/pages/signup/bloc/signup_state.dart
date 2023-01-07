
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState{
  const factory SignUpState.display() = Display;
  const factory SignUpState.valid() = Valid;
}