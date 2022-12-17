import 'package:json_annotation/json_annotation.dart';

part 'skill_training_model.g.dart';

@JsonSerializable()
class SkillTopic {
  final String id;
  final String tutorial;
  final List<Quiz> quizzes;
  SkillTopic({
    required this.id,
    required this.tutorial,
    required this.quizzes,
  });
  factory SkillTopic.fromJson(Map<String, dynamic> json) =>
      _$SkillTopicFromJson(json);
  Map<String, dynamic> toJson() => _$SkillTopicToJson(this);
}

@JsonSerializable()
class Quiz {
  //final String id;
  final String title;
  final String description;
  final List<Option> options;
  Quiz({
    //required this.id,
    required this.title,
    required this.description,
    required this.options,
  });
  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);
  Map<String, dynamic> toJson() => _$QuizToJson(this);
}

@JsonSerializable()
class Option {
  //final String id;
  final String value;
  final bool isCorrect;
  final String answer;
  Option({
    //required this.id,
    required this.value,
    required this.isCorrect,
    required this.answer,
  });
  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
  Map<String, dynamic> toJson() => _$OptionToJson(this);
}
