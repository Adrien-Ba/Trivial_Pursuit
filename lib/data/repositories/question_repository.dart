import 'package:trivial_pursuit/data/dataSources/remote/question_api.dart';
import 'package:trivial_pursuit/data/dataSources/remote/question_firebase.dart';
import 'package:trivial_pursuit/data/entities/list_questions.dart';
import 'package:trivial_pursuit/data/entities/question.dart';


class QuestionRepository {
  static QuestionRepository? _instance;
  static QuestionApi? _questionApi;
  static QuestionFirebase? _questionFirebase;



  static QuestionRepository get() {
    _questionFirebase ??= QuestionFirebase.getInstance();
    _questionApi ??= QuestionApi.getInstance();
    _instance ??= QuestionRepository._();
    return _instance!;
  }

  QuestionRepository._();

  //final Question

  Future<ListQuestions> getQuestionsOfTheDay() async {
     ListQuestions?  response = await _questionFirebase?.get();
     if(response != null) {
       return response;
     }
     else {
       ListQuestions? questions = await _questionApi?.getQuestions();
       _questionFirebase!.insertQuestions(questions!);
      //TODO supprimer les données avant envoi
      //QuestionApiResponse objectToReturn = QuestionApiResponse(
        //results: questions,
        //dates: _getDate()
      //);
      //delete le document
      //put objectToReturn a firestore
      return questions;
    }
  }

}