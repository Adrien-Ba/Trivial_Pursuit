import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit/data/entities/question.dart';


part 'list_questions.freezed.dart';
part 'list_questions.g.dart';

/// {@template list_questions}
/// ListQuestions description
/// {@endtemplate}
@freezed
class ListQuestions with _$ListQuestions {
  /// {@macro list_questions}
  const factory ListQuestions({
    required List<Question> results,
  }) = _ListQuestions;

  /// Creates a ListQuestions from Json map
  factory ListQuestions.fromJson(Map<String, dynamic> data) => _$ListQuestionsFromJson(data);
}