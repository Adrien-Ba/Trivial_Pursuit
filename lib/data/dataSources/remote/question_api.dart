import 'dart:convert';

import 'package:trivial_pursuit/data/entities/list_questions.dart';
import 'package:trivial_pursuit/data/entities/question.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class QuestionApi {
  static QuestionApi? _instanceQuestionApi;
  QuestionApi._();

  static QuestionApi getInstance() {
    _instanceQuestionApi ??= QuestionApi._();
    return _instanceQuestionApi!;
  }


  var url =
  Uri.parse('https://opentdb.com/api.php?amount=10');

  Future<ListQuestions?> getQuestions() async {
    var responseApi = await http.get(url);
    if (responseApi.statusCode == 200) {
      final questions = ListQuestions.fromJson(convert.jsonDecode(responseApi.body));
      return questions;
    }
    return null;
  }
}