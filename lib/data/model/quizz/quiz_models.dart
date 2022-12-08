import 'package:json_annotation/json_annotation.dart';
//part 'models.g.dart';

@JsonSerializable()
class Option {
  String value;
  String detail;
  bool correct;
  Option({
    this.value = '',
    this.detail = '',
    this.correct = false,
  });
  // factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
  // Map<String, dynamic> toJson() => _$OptionToJson(this);
}

@JsonSerializable()
class Question {
  String title;
  String discription;

  List<Option> options;
  Question({
    this.title = '',
    this.discription = '',
    this.options = const [],
  });
  // factory Question.fromJson(Map<String, dynamic> json) =>
  //     _$QuestionFromJson(json);
  // Map<String, dynamic> toJson() => _$QuestionToJson(this);
}

@JsonSerializable()
class Quiz {
  String id;
  String title;
  String description;
  String topic;
  List<Question> questions;

  Quiz({
    this.title = '',
    this.description = '',
    this.id = '',
    this.topic = '',
    this.questions = const [],
  });
  // factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);
  // Map<String, dynamic> toJson() => _$QuizToJson(this);
}

@JsonSerializable()
class Report {
  String id;
  int total;
  Map topics;

  Report({
    this.id = '',
    this.topics = const {},
    this.total = 0,
  });
  // factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
  // Map<String, dynamic> toJson() => _$ReportToJson(this);
}
