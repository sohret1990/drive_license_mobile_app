// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionModel _$$_QuestionModelFromJson(Map<String, dynamic> json) =>
    _$_QuestionModel(
      id: json['id'] as int,
      nameAz: json['nameAz'] as String,
      nameRu: json['nameRu'] as String,
      nameEn: json['nameEn'] as String,
      imagePath: json['imagePath'] as String?,
      questionAnswer: (json['questionAnswer'] as List<dynamic>)
          .map((e) => QuestionAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      correctAnswer: QuestionCorrectAnswerModel.fromJson(
          json['correctAnswer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestionModelToJson(_$_QuestionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameAz': instance.nameAz,
      'nameRu': instance.nameRu,
      'nameEn': instance.nameEn,
      'imagePath': instance.imagePath,
      'questionAnswer': instance.questionAnswer,
      'correctAnswer': instance.correctAnswer,
    };
