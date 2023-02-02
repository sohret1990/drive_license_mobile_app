class QuestionModel {
  final int id;
  final String nameAz;
  final String nameRu;
  final String nameEn;
  QuestionModel({required this.id, required this.nameAz, required this.nameRu, required this.nameEn});

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      QuestionModel(
        id: json['id'],
        nameAz: json['nameAz'],
        nameRu: json['nameRu'],
        nameEn: json['nameEn'],
      );
}