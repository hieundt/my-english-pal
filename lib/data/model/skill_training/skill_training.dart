import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myenglishpal_web/data/model/skill_training/quiz/quiz.dart';

part 'skill_training.freezed.dart';
part 'skill_training.g.dart';

@freezed
class SkillTraining with _$SkillTraining {
  factory SkillTraining({
    required String id,
    required String name,
    required String tutorial,
    @Default([]) List<Quiz> quizzes,
  }) = _SkillTraining;

  factory SkillTraining.fromJson(Map<String, dynamic> json) =>
      _$SkillTrainingFromJson(json);

  //!Magic
  static Future<SkillTraining> fromDocument(Map<String, dynamic> json) async {
    final quizzesDocs = ((json['quizzes'] as List<dynamic>?)
                ?.map((e) => e as DocumentReference<Map<String, dynamic>>))
            ?.map((e) => e.get()) ??
        [];
    final quizzes = (await Future.wait(quizzesDocs)).map((e) {
      return Quiz.fromDocument(e.data()!);
    });
    json.remove('quizzes');
    final parse = SkillTraining.fromJson(json);
    return parse.copyWith(quizzes: await Future.wait(quizzes));
  }
}
