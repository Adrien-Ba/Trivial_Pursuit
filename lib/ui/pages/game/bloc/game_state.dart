import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit/data/entities/list_questions.dart';
import 'package:trivial_pursuit/data/entities/question.dart';

part 'game_state.freezed.dart';

@freezed
class GameState with _$GameState{
  const factory GameState.loading() = Loading;
  const factory GameState.loader({
    required ListQuestions questions,
  }) = Loaded;
  const factory GameState.error(String message) = Error;
  const factory GameState.answerSelected(String answer) = AnswerSelected;
  const factory GameState.goodAnswer() = GoodAnswer;
  const factory GameState.wrongAnswer() = WrongAnswer;
  const factory GameState.currentQuestion(Question q) = currentQuestion;
  const factory GameState.endGame() = EndGame;
  const factory GameState.alreadyPlayed() = AlreadyPlayed;
}