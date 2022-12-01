import '../entities/question.dart';

class QuestionRepository {
  static QuestionRepository? _instance;

  static QuestionRepository getInstance() {
    _instance ??= QuestionRepository._();
    return _instance!;
  }

  QuestionRepository._();

  //final Question

  Future<List<Question>> getQuestionsOfTheDay() async {
    QuestionApiResponse response = await _questionFirestore.get();
    if(response.date == _getDate()) {
      return response.results!;
    } else {
      List<Question> questions = await getFilteredQuestions();
      QuestionApiResponse objectToReturn = QuestionApiResponse(
        results: questions,
        //dates: _getDate()
      );
      //delete le document
      //put objectToReturn a firestore
      return questions;
    }
  }
}