// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Quiz _$$_QuizFromJson(Map<String, dynamic> json) => _$_Quiz(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuizToJson(_$_Quiz instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'options': instance.options,
    };
