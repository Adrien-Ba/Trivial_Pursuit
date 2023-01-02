import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState{
  const factory LoginState.loading() = Loading;
  const factory LoginState.loginit() = Loginit;
  const factory LoginState.correct() = Correct;
  const factory LoginState.incorrect() = Incorrect;
}