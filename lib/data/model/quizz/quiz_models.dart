import 'package:json_annotation/json_annotation.dart';
part 'quiz_models.g.dart';

@JsonSerializable()
class Part {
  String tutorial;
  List<Quiz> quizzes;
  Part({
    this.tutorial = '',
    this.quizzes = const [],
  });
  factory Part.fromJson(Map<String, dynamic> json) => _$PartFromJson(json);
  Map<String, dynamic> toJson() => _$PartToJson(this);
}

@JsonSerializable()
class Quiz {
  String title;
  String discription;
  List<Option> options;
  Quiz({
    this.title = '',
    this.discription = '',
    this.options = const [],
  });
  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);
  Map<String, dynamic> toJson() => _$QuizToJson(this);
}

@JsonSerializable()
class Option {
  String value;
  String answers;
  bool isCorrect;
  Option({
    this.value = '',
    this.answers = '',
    this.isCorrect = false,
  });
  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
  Map<String, dynamic> toJson() => _$OptionToJson(this);
}

@JsonSerializable()
class Report {
  String id;
  int total;
  Map part;

  Report({
    this.id = '',
    this.total = 0,
    this.part = const {},
  });
  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
  Map<String, dynamic> toJson() => _$ReportToJson(this);
}
