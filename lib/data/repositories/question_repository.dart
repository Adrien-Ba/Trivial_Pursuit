import 'package:trivial_pursuit/data/dataSources/remote/auth_firebase.dart';
import 'package:trivial_pursuit/data/dataSources/remote/question_api.dart';
import 'package:trivial_pursuit/data/dataSources/remote/question_firebase.dart';
import 'package:trivial_pursuit/data/dataSources/remote/user_firebase.dart';
import 'package:trivial_pursuit/data/entities/list_questions.dart';
import 'package:trivial_pursuit/data/entities/question.dart';


class QuestionRepository {
  static QuestionRepository? _instance;
  static QuestionApi? _questionApi;
  static QuestionFirebase? _questionFirebase;
  static UserFirebase? _userFirebase;
  static AuthFirebase? _authFirebase;

  static QuestionRepository get() {
    _questionFirebase ??= QuestionFirebase.getInstance();
    _questionApi ??= QuestionApi.getInstance();
    _instance ??= QuestionRepository._();
    _userFirebase ??= UserFirebase.getInstance();
    _authFirebase ??= AuthFirebase.getInstance();
    return _instance!;
  }

  QuestionRepository._();

  //final Question

  Future<ListQuestions> getQuestionsOfTheDay() async {
     ListQuestions?  response = await _questionFirebase!.get();
     if(response != null) {
       return response;
     }
     else {
       ListQuestions? questions = await _questionApi!.getQuestions();
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

  Future<void> setUserScore(String uid, int score) async {
    await _userFirebase!.setUserScore(uid, score);
  }

  Future<String?> getCurrentUser() async {
    return await _authFirebase?.getCurrentUser();
  }
}