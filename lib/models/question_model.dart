import 'dart:convert';
import 'dart:typed_data';

class QuestionModel {
  final int id;
  final String nameAz;
  final String nameRu;
  final String nameEn;
  final String? imagePath;
  QuestionModel({required this.id, required this.nameAz, required this.nameRu, required this.nameEn, this.imagePath});

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      QuestionModel(
        id: json['id'],
        nameAz: json['nameAz'],
        nameRu: json['nameRu'],
        nameEn: json['nameEn'],
        imagePath: json['imagePath']
      );
}