// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_correct_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionCorrectAnswerModel _$QuestionCorrectAnswerModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionCorrectAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionCorrectAnswerModel {
  int get id => throw _privateConstructorUsedError;
  int get answerNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCorrectAnswerModelCopyWith<QuestionCorrectAnswerModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCorrectAnswerModelCopyWith<$Res> {
  factory $QuestionCorrectAnswerModelCopyWith(QuestionCorrectAnswerModel value,
          $Res Function(QuestionCorrectAnswerModel) then) =
      _$QuestionCorrectAnswerModelCopyWithImpl<$Res,
          QuestionCorrectAnswerModel>;
  @useResult
  $Res call({int id, int answerNo});
}

/// @nodoc
class _$QuestionCorrectAnswerModelCopyWithImpl<$Res,
        $Val extends QuestionCorrectAnswerModel>
    implements $QuestionCorrectAnswerModelCopyWith<$Res> {
  _$QuestionCorrectAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? answerNo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answerNo: null == answerNo
          ? _value.answerNo
          : answerNo // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionCorrectAnswerModelCopyWith<$Res>
    implements $QuestionCorrectAnswerModelCopyWith<$Res> {
  factory _$$_QuestionCorrectAnswerModelCopyWith(
          _$_QuestionCorrectAnswerModel value,
          $Res Function(_$_QuestionCorrectAnswerModel) then) =
      __$$_QuestionCorrectAnswerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int answerNo});
}

/// @nodoc
class __$$_QuestionCorrectAnswerModelCopyWithImpl<$Res>
    extends _$QuestionCorrectAnswerModelCopyWithImpl<$Res,
        _$_QuestionCorrectAnswerModel>
    implements _$$_QuestionCorrectAnswerModelCopyWith<$Res> {
  __$$_QuestionCorrectAnswerModelCopyWithImpl(
      _$_QuestionCorrectAnswerModel _value,
      $Res Function(_$_QuestionCorrectAnswerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? answerNo = null,
  }) {
    return _then(_$_QuestionCorrectAnswerModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answerNo: null == answerNo
          ? _value.answerNo
          : answerNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionCorrectAnswerModel
    with DiagnosticableTreeMixin
    implements _QuestionCorrectAnswerModel {
  const _$_QuestionCorrectAnswerModel(
      {required this.id, required this.answerNo});

  factory _$_QuestionCorrectAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionCorrectAnswerModelFromJson(json);

  @override
  final int id;
  @override
  final int answerNo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionCorrectAnswerModel(id: $id, answerNo: $answerNo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionCorrectAnswerModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('answerNo', answerNo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionCorrectAnswerModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.answerNo, answerNo) ||
                other.answerNo == answerNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, answerNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionCorrectAnswerModelCopyWith<_$_QuestionCorrectAnswerModel>
      get copyWith => __$$_QuestionCorrectAnswerModelCopyWithImpl<
          _$_QuestionCorrectAnswerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionCorrectAnswerModelToJson(
      this,
    );
  }
}

abstract class _QuestionCorrectAnswerModel
    implements QuestionCorrectAnswerModel {
  const factory _QuestionCorrectAnswerModel(
      {required final int id,
      required final int answerNo}) = _$_QuestionCorrectAnswerModel;

  factory _QuestionCorrectAnswerModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionCorrectAnswerModel.fromJson;

  @override
  int get id;
  @override
  int get answerNo;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCorrectAnswerModelCopyWith<_$_QuestionCorrectAnswerModel>
      get copyWith => throw _privateConstructorUsedError;
}
