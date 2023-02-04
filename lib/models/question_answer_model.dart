import 'package:drive_license_app/models/answer_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'question_answer_model.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'question_answer_model.g.dart';

@freezed
class QuestionAnswerModel with _$QuestionAnswerModel {
  const factory QuestionAnswerModel({
    required int id,
    required int questionId,
    required AnswerModel answer
  }) = _QuestionAnswerModel;

  factory QuestionAnswerModel.fromJson(Map<String, Object?> json)
  => _$QuestionAnswerModelFromJson(json);
}