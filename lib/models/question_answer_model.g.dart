// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_answer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionAnswerModel _$$_QuestionAnswerModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionAnswerModel(
      id: json['id'] as int,
      questionId: json['questionId'] as int,
      answer: AnswerModel.fromJson(json['answer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestionAnswerModelToJson(
        _$_QuestionAnswerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'questionId': instance.questionId,
      'answer': instance.answer,
    };
