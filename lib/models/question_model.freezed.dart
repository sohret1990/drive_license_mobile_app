// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionModel {
  int get id => throw _privateConstructorUsedError;
  String get nameAz => throw _privateConstructorUsedError;
  String get nameRu => throw _privateConstructorUsedError;
  String get nameEn => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  List<QuestionAnswerModel> get questionAnswer =>
      throw _privateConstructorUsedError;
  QuestionCorrectAnswerModel get correctAnswer =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res, QuestionModel>;
  @useResult
  $Res call(
      {int id,
      String nameAz,
      String nameRu,
      String nameEn,
      String? imagePath,
      List<QuestionAnswerModel> questionAnswer,
      QuestionCorrectAnswerModel correctAnswer});

  $QuestionCorrectAnswerModelCopyWith<$Res> get correctAnswer;
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res, $Val extends QuestionModel>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameAz = null,
    Object? nameRu = null,
    Object? nameEn = null,
    Object? imagePath = freezed,
    Object? questionAnswer = null,
    Object? correctAnswer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameAz: null == nameAz
          ? _value.nameAz
          : nameAz // ignore: cast_nullable_to_non_nullable
              as String,
      nameRu: null == nameRu
          ? _value.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      questionAnswer: null == questionAnswer
          ? _value.questionAnswer
          : questionAnswer // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswerModel>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as QuestionCorrectAnswerModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionCorrectAnswerModelCopyWith<$Res> get correctAnswer {
    return $QuestionCorrectAnswerModelCopyWith<$Res>(_value.correctAnswer,
        (value) {
      return _then(_value.copyWith(correctAnswer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionModelCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$_QuestionModelCopyWith(
          _$_QuestionModel value, $Res Function(_$_QuestionModel) then) =
      __$$_QuestionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String nameAz,
      String nameRu,
      String nameEn,
      String? imagePath,
      List<QuestionAnswerModel> questionAnswer,
      QuestionCorrectAnswerModel correctAnswer});

  @override
  $QuestionCorrectAnswerModelCopyWith<$Res> get correctAnswer;
}

/// @nodoc
class __$$_QuestionModelCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res, _$_QuestionModel>
    implements _$$_QuestionModelCopyWith<$Res> {
  __$$_QuestionModelCopyWithImpl(
      _$_QuestionModel _value, $Res Function(_$_QuestionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameAz = null,
    Object? nameRu = null,
    Object? nameEn = null,
    Object? imagePath = freezed,
    Object? questionAnswer = null,
    Object? correctAnswer = null,
  }) {
    return _then(_$_QuestionModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameAz: null == nameAz
          ? _value.nameAz
          : nameAz // ignore: cast_nullable_to_non_nullable
              as String,
      nameRu: null == nameRu
          ? _value.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      questionAnswer: null == questionAnswer
          ? _value._questionAnswer
          : questionAnswer // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswerModel>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as QuestionCorrectAnswerModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionModel with DiagnosticableTreeMixin implements _QuestionModel {
  const _$_QuestionModel(
      {required this.id,
      required this.nameAz,
      required this.nameRu,
      required this.nameEn,
      this.imagePath,
      required final List<QuestionAnswerModel> questionAnswer,
      required this.correctAnswer})
      : _questionAnswer = questionAnswer;

  factory _$_QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionModelFromJson(json);

  @override
  final int id;
  @override
  final String nameAz;
  @override
  final String nameRu;
  @override
  final String nameEn;
  @override
  final String? imagePath;
  final List<QuestionAnswerModel> _questionAnswer;
  @override
  List<QuestionAnswerModel> get questionAnswer {
    if (_questionAnswer is EqualUnmodifiableListView) return _questionAnswer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionAnswer);
  }

  @override
  final QuestionCorrectAnswerModel correctAnswer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionModel(id: $id, nameAz: $nameAz, nameRu: $nameRu, nameEn: $nameEn, imagePath: $imagePath, questionAnswer: $questionAnswer, correctAnswer: $correctAnswer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('nameAz', nameAz))
      ..add(DiagnosticsProperty('nameRu', nameRu))
      ..add(DiagnosticsProperty('nameEn', nameEn))
      ..add(DiagnosticsProperty('imagePath', imagePath))
      ..add(DiagnosticsProperty('questionAnswer', questionAnswer))
      ..add(DiagnosticsProperty('correctAnswer', correctAnswer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameAz, nameAz) || other.nameAz == nameAz) &&
            (identical(other.nameRu, nameRu) || other.nameRu == nameRu) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality()
                .equals(other._questionAnswer, _questionAnswer) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nameAz,
      nameRu,
      nameEn,
      imagePath,
      const DeepCollectionEquality().hash(_questionAnswer),
      correctAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionModelCopyWith<_$_QuestionModel> get copyWith =>
      __$$_QuestionModelCopyWithImpl<_$_QuestionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionModelToJson(
      this,
    );
  }
}

abstract class _QuestionModel implements QuestionModel {
  const factory _QuestionModel(
          {required final int id,
          required final String nameAz,
          required final String nameRu,
          required final String nameEn,
          final String? imagePath,
          required final List<QuestionAnswerModel> questionAnswer,
          required final QuestionCorrectAnswerModel correctAnswer}) =
      _$_QuestionModel;

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionModel.fromJson;

  @override
  int get id;
  @override
  String get nameAz;
  @override
  String get nameRu;
  @override
  String get nameEn;
  @override
  String? get imagePath;
  @override
  List<QuestionAnswerModel> get questionAnswer;
  @override
  QuestionCorrectAnswerModel get correctAnswer;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionModelCopyWith<_$_QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
