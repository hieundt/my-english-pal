// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_training.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SkillTraining _$$_SkillTrainingFromJson(Map<String, dynamic> json) =>
    _$_SkillTraining(
      id: json['id'] as String,
      name: json['name'] as String,
      tutorial: json['tutorial'] as String,
      quizzes: (json['quizzes'] as List<dynamic>?)
              ?.map((e) => Quiz.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_SkillTrainingToJson(_$_SkillTraining instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tutorial': instance.tutorial,
      'quizzes': instance.quizzes,
    };
