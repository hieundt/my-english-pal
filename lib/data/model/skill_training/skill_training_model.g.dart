// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_training_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkillTopic _$SkillTopicFromJson(Map<String, dynamic> json) => SkillTopic(
      id: json['id'] as String,
      tutorial: json['tutorial'] as String,
      quizzes: (json['quizzes'] as List<dynamic>)
          .map((e) => Quiz.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SkillTopicToJson(SkillTopic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tutorial': instance.tutorial,
      'quizzes': instance.quizzes,
    };

Quiz _$QuizFromJson(Map<String, dynamic> json) => Quiz(
      title: json['title'] as String,
      description: json['description'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuizToJson(Quiz instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'options': instance.options,
    };

Option _$OptionFromJson(Map<String, dynamic> json) => Option(
      value: json['value'] as String,
      isCorrect: json['isCorrect'] as bool,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
      'value': instance.value,
      'isCorrect': instance.isCorrect,
      'answer': instance.answer,
    };
