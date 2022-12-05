import 'package:trivial_pursuit/data/dataSources/remote/question_api.dart';
import 'package:trivial_pursuit/data/entities/list_questions.dart';
import 'package:trivial_pursuit/data/entities/question.dart';


class QuestionRepository {
  static QuestionRepository? _instance;
  static QuestionApi? _questionApi;



  static QuestionRepository get() {
    _questionApi ??= QuestionApi.getInstance();
    _instance ??= QuestionRepository._();
    return _instance!;
  }

  QuestionRepository._();

  //final Question
/*
  Future<List<ListQuestions>> getQuestionsOfTheDay() async {
     ListQuestions?  response = await _questionFirestore?.get();
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

 */

  Future<ListQuestions> getQuestionsOfTheDay() async {
    ListQuestions? questions = await _questionApi?.getQuestions();
    return questions!;
  }

}