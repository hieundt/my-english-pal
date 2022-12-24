// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class SkillTopic {
  final String id;
  final String name;
  final String tutorial;
  final List<Quiz> quizzes;
  SkillTopic({
    this.id = '',
    required this.name,
    required this.tutorial,
    required this.quizzes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'tutorial': tutorial,
      'quizzes': quizzes.map((x) => x.toMap()).toList(),
    };
  }

  factory SkillTopic.fromMap(Map<String, dynamic> map) {
    return SkillTopic(
      id: map['id'] as String,
      name: map['name'] as String,
      tutorial: map['tutorial'] as String,
      quizzes: List<Quiz>.from(
        (map['quizzes'] as List<int>).map<Quiz>(
          (x) => Quiz.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory SkillTopic.fromJson(String source) =>
      SkillTopic.fromMap(json.decode(source) as Map<String, dynamic>);
}

@JsonSerializable()
class Quiz {
  final String title;
  final String description;
  final List<Option> options;
  Quiz({
    this.title = '',
    required this.description,
    required this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'options': options.map((x) => x.toMap()).toList(),
    };
  }

  factory Quiz.fromMap(Map<String, dynamic> map) {
    return Quiz(
      title: map['title'] as String,
      description: map['description'] as String,
      options: List<Option>.from(
        (map['options'] as List<int>).map<Option>(
          (x) => Option.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Quiz.fromJson(String source) =>
      Quiz.fromMap(json.decode(source) as Map<String, dynamic>);
}

@JsonSerializable()
class Option {
  final String value;
  final bool isCorrect;
  final String answer;
  Option({
    required this.value,
    required this.isCorrect,
    required this.answer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'isCorrect': isCorrect,
      'answer': answer,
    };
  }

  factory Option.fromMap(Map<String, dynamic> map) {
    return Option(
      value: map['value'] as String,
      isCorrect: map['isCorrect'] as bool,
      answer: map['answer'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Option.fromJson(String source) =>
      Option.fromMap(json.decode(source) as Map<String, dynamic>);
}
