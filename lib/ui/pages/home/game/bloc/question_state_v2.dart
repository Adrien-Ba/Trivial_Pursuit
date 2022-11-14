import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit/data/entities/question.dart';

part 'question_state_v2.freezed.dart';

@freezed
class QuestionState with _$QuestionState{
  const factory QuestionState.loading() = Loading;
  const factory QuestionState.loader() = Loaded;
  const factory QuestionState.error(String message) = Error;
  const factory QuestionState.answerSelected(String answer) = AnswerSelected;
  const factory QuestionState.goodAnswer() = GoodAnswer;
  const factory QuestionState.wrongAnswer() = WrongAnswer;
  const factory QuestionState.currentQuestion(Question q) = currentQuestion;
}