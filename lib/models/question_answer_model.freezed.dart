// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionAnswerModel _$QuestionAnswerModelFromJson(Map<String, dynamic> json) {
  return _QuestionAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionAnswerModel {
  int get id => throw _privateConstructorUsedError;
  int get questionId => throw _privateConstructorUsedError;
  AnswerModel get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionAnswerModelCopyWith<QuestionAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAnswerModelCopyWith<$Res> {
  factory $QuestionAnswerModelCopyWith(
          QuestionAnswerModel value, $Res Function(QuestionAnswerModel) then) =
      _$QuestionAnswerModelCopyWithImpl<$Res, QuestionAnswerModel>;
  @useResult
  $Res call({int id, int questionId, AnswerModel answer});

  $AnswerModelCopyWith<$Res> get answer;
}

/// @nodoc
class _$QuestionAnswerModelCopyWithImpl<$Res, $Val extends QuestionAnswerModel>
    implements $QuestionAnswerModelCopyWith<$Res> {
  _$QuestionAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionId = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as AnswerModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnswerModelCopyWith<$Res> get answer {
    return $AnswerModelCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionAnswerModelCopyWith<$Res>
    implements $QuestionAnswerModelCopyWith<$Res> {
  factory _$$_QuestionAnswerModelCopyWith(_$_QuestionAnswerModel value,
          $Res Function(_$_QuestionAnswerModel) then) =
      __$$_QuestionAnswerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int questionId, AnswerModel answer});

  @override
  $AnswerModelCopyWith<$Res> get answer;
}

/// @nodoc
class __$$_QuestionAnswerModelCopyWithImpl<$Res>
    extends _$QuestionAnswerModelCopyWithImpl<$Res, _$_QuestionAnswerModel>
    implements _$$_QuestionAnswerModelCopyWith<$Res> {
  __$$_QuestionAnswerModelCopyWithImpl(_$_QuestionAnswerModel _value,
      $Res Function(_$_QuestionAnswerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionId = null,
    Object? answer = null,
  }) {
    return _then(_$_QuestionAnswerModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as AnswerModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionAnswerModel
    with DiagnosticableTreeMixin
    implements _QuestionAnswerModel {
  const _$_QuestionAnswerModel(
      {required this.id, required this.questionId, required this.answer});

  factory _$_QuestionAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionAnswerModelFromJson(json);

  @override
  final int id;
  @override
  final int questionId;
  @override
  final AnswerModel answer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionAnswerModel(id: $id, questionId: $questionId, answer: $answer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionAnswerModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('questionId', questionId))
      ..add(DiagnosticsProperty('answer', answer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionAnswerModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, questionId, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionAnswerModelCopyWith<_$_QuestionAnswerModel> get copyWith =>
      __$$_QuestionAnswerModelCopyWithImpl<_$_QuestionAnswerModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionAnswerModelToJson(
      this,
    );
  }
}

abstract class _QuestionAnswerModel implements QuestionAnswerModel {
  const factory _QuestionAnswerModel(
      {required final int id,
      required final int questionId,
      required final AnswerModel answer}) = _$_QuestionAnswerModel;

  factory _QuestionAnswerModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionAnswerModel.fromJson;

  @override
  int get id;
  @override
  int get questionId;
  @override
  AnswerModel get answer;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionAnswerModelCopyWith<_$_QuestionAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
