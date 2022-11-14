import 'dart:convert';

import 'package:trivial_pursuit/data/entities/question.dart';
import 'package:http/http.dart' as http;

class QuestionApi {
  final String _baseUrl = "opentdb.com";

  static QuestionApi? _instance;

  static getInstance() {
    _instance ??=QuestionApi._();
    return _instance!;
  }

  QuestionApi._();

  Future<List<Question>> getQuestionsOfTheDay() async {
    final queryParameters = {'amount': '10'};
    final uri = Uri.https(_baseUrl, '/api.php', queryParameters);

    final response = await http.get(uri);
    if(response.statusCode == 200) {
      Question question = Question.fromJson(jsonDecode(response.body));
      return question;
    } else {
      throw Exception("Failed to load words");
    }
  }

}