import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'subject_model.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'subject_model.g.dart';

@freezed
class SubjectModel with _$SubjectModel {
  const factory SubjectModel({
    required int id,
    required String nameAz,
    required String nameRu,
    required String nameEn,
  }) = _SubjectModel;

  factory SubjectModel.fromJson(Map<String, Object?> json)
  => _$SubjectModelFromJson(json);
}