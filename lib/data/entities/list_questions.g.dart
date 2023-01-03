// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_questions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListQuestions _$$_ListQuestionsFromJson(Map<String, dynamic> json) =>
    _$_ListQuestions(
      results: (json['results'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListQuestionsToJson(_$_ListQuestions instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
