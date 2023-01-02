import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState{
  const factory LoginState.initial() = Initial;
  const factory LoginState.correct() = Correct;
  const factory LoginState.incorrect() = Incorrect;
  const factory LoginState.error(String message) = Error;
}