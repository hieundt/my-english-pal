// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vocabulary_topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VocabularyTopic _$VocabularyTopicFromJson(Map<String, dynamic> json) {
  return _VocabularyTopic.fromJson(json);
}

/// @nodoc
mixin _$VocabularyTopic {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<Vocabulary>? get vocabularies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VocabularyTopicCopyWith<VocabularyTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VocabularyTopicCopyWith<$Res> {
  factory $VocabularyTopicCopyWith(
          VocabularyTopic value, $Res Function(VocabularyTopic) then) =
      _$VocabularyTopicCopyWithImpl<$Res, VocabularyTopic>;
  @useResult
  $Res call({String? id, String? name, List<Vocabulary>? vocabularies});
}

/// @nodoc
class _$VocabularyTopicCopyWithImpl<$Res, $Val extends VocabularyTopic>
    implements $VocabularyTopicCopyWith<$Res> {
  _$VocabularyTopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? vocabularies = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vocabularies: freezed == vocabularies
          ? _value.vocabularies
          : vocabularies // ignore: cast_nullable_to_non_nullable
              as List<Vocabulary>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VocabularyTopicCopyWith<$Res>
    implements $VocabularyTopicCopyWith<$Res> {
  factory _$$_VocabularyTopicCopyWith(
          _$_VocabularyTopic value, $Res Function(_$_VocabularyTopic) then) =
      __$$_VocabularyTopicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, List<Vocabulary>? vocabularies});
}

/// @nodoc
class __$$_VocabularyTopicCopyWithImpl<$Res>
    extends _$VocabularyTopicCopyWithImpl<$Res, _$_VocabularyTopic>
    implements _$$_VocabularyTopicCopyWith<$Res> {
  __$$_VocabularyTopicCopyWithImpl(
      _$_VocabularyTopic _value, $Res Function(_$_VocabularyTopic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? vocabularies = freezed,
  }) {
    return _then(_$_VocabularyTopic(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vocabularies: freezed == vocabularies
          ? _value._vocabularies
          : vocabularies // ignore: cast_nullable_to_non_nullable
              as List<Vocabulary>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VocabularyTopic implements _VocabularyTopic {
  _$_VocabularyTopic({this.id, this.name, final List<Vocabulary>? vocabularies})
      : _vocabularies = vocabularies;

  factory _$_VocabularyTopic.fromJson(Map<String, dynamic> json) =>
      _$$_VocabularyTopicFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  final List<Vocabulary>? _vocabularies;
  @override
  List<Vocabulary>? get vocabularies {
    final value = _vocabularies;
    if (value == null) return null;
    if (_vocabularies is EqualUnmodifiableListView) return _vocabularies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VocabularyTopic(id: $id, name: $name, vocabularies: $vocabularies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VocabularyTopic &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._vocabularies, _vocabularies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_vocabularies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VocabularyTopicCopyWith<_$_VocabularyTopic> get copyWith =>
      __$$_VocabularyTopicCopyWithImpl<_$_VocabularyTopic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VocabularyTopicToJson(
      this,
    );
  }
}

abstract class _VocabularyTopic implements VocabularyTopic {
  factory _VocabularyTopic(
      {final String? id,
      final String? name,
      final List<Vocabulary>? vocabularies}) = _$_VocabularyTopic;

  factory _VocabularyTopic.fromJson(Map<String, dynamic> json) =
      _$_VocabularyTopic.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  List<Vocabulary>? get vocabularies;
  @override
  @JsonKey(ignore: true)
  _$$_VocabularyTopicCopyWith<_$_VocabularyTopic> get copyWith =>
      throw _privateConstructorUsedError;
}
