import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myenglishpal_web/data/model/skill_training/option/option.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
class Quiz with _$Quiz {
  factory Quiz({
    String? id,
    String? title,
    String? description,
    List<Option>? options,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);

  static Future<Quiz> fromDocument(Map<String, dynamic> json) async {
    final optionsDoc = ((json['options'] as List<dynamic>?)
                ?.map((e) => e as DocumentReference<Map<String, dynamic>>))
            ?.map((e) => e.get()) ??
        [];
    final options = (await Future.wait(optionsDoc))
        .map(
          (e) => Option.fromJson(e.data()!),
        )
        .toList();
    json.remove('options');
    final quiz = Quiz.fromJson(json);
    return quiz.copyWith(options: options);
  }
}
