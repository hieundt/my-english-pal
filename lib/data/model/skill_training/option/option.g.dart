// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Option _$$_OptionFromJson(Map<String, dynamic> json) => _$_Option(
      id: json['id'] as String?,
      value: json['value'] as String?,
      isCorrect: json['isCorrect'] as bool?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$_OptionToJson(_$_Option instance) => <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'isCorrect': instance.isCorrect,
      'answer': instance.answer,
    };
