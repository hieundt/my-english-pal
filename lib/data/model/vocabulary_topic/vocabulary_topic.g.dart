// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vocabulary_topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VocabularyTopic _$$_VocabularyTopicFromJson(Map<String, dynamic> json) =>
    _$_VocabularyTopic(
      id: json['id'] as String?,
      name: json['name'] as String?,
      vocabularies: (json['vocabularies'] as List<dynamic>?)
          ?.map((e) => Vocabulary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VocabularyTopicToJson(_$_VocabularyTopic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'vocabularies': instance.vocabularies,
    };
