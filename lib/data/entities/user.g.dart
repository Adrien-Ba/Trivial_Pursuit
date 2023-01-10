// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      pseudo: json['pseudo'] as String? ?? "Inconnu",
      age: json['age'] as int? ?? 99,
      score: json['score'] as int? ?? 0,
      date: json['date'] as String? ?? "",
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'pseudo': instance.pseudo,
      'age': instance.age,
      'score': instance.score,
      'date': instance.date,
    };
