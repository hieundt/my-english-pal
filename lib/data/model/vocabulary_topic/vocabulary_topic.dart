import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myenglishpal_web/data/model/vocabulary_topic/vocabulary/vocabulary.dart';

part 'vocabulary_topic.freezed.dart';
part 'vocabulary_topic.g.dart';

@freezed
class VocabularyTopic with _$VocabularyTopic {
  factory VocabularyTopic({
    String? id,
    String? name,
    List<Vocabulary>? vocabularies,
  }) = _VocabularyTopic;

  factory VocabularyTopic.fromJson(Map<String, dynamic> json) =>
      _$VocabularyTopicFromJson(json);

  static Future<VocabularyTopic> fromDocument(Map<String, dynamic> json) async {
    final vocabulariesDoc = ((json['vocabularies'] as List<dynamic>?)
                ?.map((e) => e as DocumentReference<Map<String, dynamic>>))
            ?.map((e) => e.get()) ??
        [];
    final vocabularies = (await Future.wait(vocabulariesDoc))
        .map(
          (e) => Vocabulary.fromJson(e.data()!),
        )
        .toList();
    json.remove('vocabularies');
    final vocabulary = VocabularyTopic.fromJson(json);
    return vocabulary.copyWith(vocabularies: vocabularies);
  }
}
