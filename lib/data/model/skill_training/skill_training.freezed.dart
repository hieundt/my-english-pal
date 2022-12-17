// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skill_training.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SkillTraining _$SkillTrainingFromJson(Map<String, dynamic> json) {
  return _SkillTraining.fromJson(json);
}

/// @nodoc
mixin _$SkillTraining {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get tutorial => throw _privateConstructorUsedError;
  List<Quiz> get quizzes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillTrainingCopyWith<SkillTraining> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillTrainingCopyWith<$Res> {
  factory $SkillTrainingCopyWith(
          SkillTraining value, $Res Function(SkillTraining) then) =
      _$SkillTrainingCopyWithImpl<$Res, SkillTraining>;
  @useResult
  $Res call({String id, String name, String tutorial, List<Quiz> quizzes});
}

/// @nodoc
class _$SkillTrainingCopyWithImpl<$Res, $Val extends SkillTraining>
    implements $SkillTrainingCopyWith<$Res> {
  _$SkillTrainingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tutorial = null,
    Object? quizzes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tutorial: null == tutorial
          ? _value.tutorial
          : tutorial // ignore: cast_nullable_to_non_nullable
              as String,
      quizzes: null == quizzes
          ? _value.quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SkillTrainingCopyWith<$Res>
    implements $SkillTrainingCopyWith<$Res> {
  factory _$$_SkillTrainingCopyWith(
          _$_SkillTraining value, $Res Function(_$_SkillTraining) then) =
      __$$_SkillTrainingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String tutorial, List<Quiz> quizzes});
}

/// @nodoc
class __$$_SkillTrainingCopyWithImpl<$Res>
    extends _$SkillTrainingCopyWithImpl<$Res, _$_SkillTraining>
    implements _$$_SkillTrainingCopyWith<$Res> {
  __$$_SkillTrainingCopyWithImpl(
      _$_SkillTraining _value, $Res Function(_$_SkillTraining) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tutorial = null,
    Object? quizzes = null,
  }) {
    return _then(_$_SkillTraining(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tutorial: null == tutorial
          ? _value.tutorial
          : tutorial // ignore: cast_nullable_to_non_nullable
              as String,
      quizzes: null == quizzes
          ? _value._quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SkillTraining implements _SkillTraining {
  _$_SkillTraining(
      {required this.id,
      required this.name,
      required this.tutorial,
      final List<Quiz> quizzes = const []})
      : _quizzes = quizzes;

  factory _$_SkillTraining.fromJson(Map<String, dynamic> json) =>
      _$$_SkillTrainingFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String tutorial;
  final List<Quiz> _quizzes;
  @override
  @JsonKey()
  List<Quiz> get quizzes {
    if (_quizzes is EqualUnmodifiableListView) return _quizzes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizzes);
  }

  @override
  String toString() {
    return 'SkillTraining(id: $id, name: $name, tutorial: $tutorial, quizzes: $quizzes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SkillTraining &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tutorial, tutorial) ||
                other.tutorial == tutorial) &&
            const DeepCollectionEquality().equals(other._quizzes, _quizzes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, tutorial,
      const DeepCollectionEquality().hash(_quizzes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SkillTrainingCopyWith<_$_SkillTraining> get copyWith =>
      __$$_SkillTrainingCopyWithImpl<_$_SkillTraining>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SkillTrainingToJson(
      this,
    );
  }
}

abstract class _SkillTraining implements SkillTraining {
  factory _SkillTraining(
      {required final String id,
      required final String name,
      required final String tutorial,
      final List<Quiz> quizzes}) = _$_SkillTraining;

  factory _SkillTraining.fromJson(Map<String, dynamic> json) =
      _$_SkillTraining.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get tutorial;
  @override
  List<Quiz> get quizzes;
  @override
  @JsonKey(ignore: true)
  _$$_SkillTrainingCopyWith<_$_SkillTraining> get copyWith =>
      throw _privateConstructorUsedError;
}
