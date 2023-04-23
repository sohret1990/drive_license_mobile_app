import 'package:drive_license_app/helpers/my_app_bar.dart';
import 'package:drive_license_app/models/question_model.dart';
import 'package:flutter/material.dart';

class ExamResultScreen extends StatefulWidget {
  const ExamResultScreen({Key? key, required this.isSuccessed, required this.questionList, required this.answersList})
      : super(key: key);
  final bool isSuccessed;
  final List<QuestionModel> questionList;
  final Map<int, int> answersList;

  @override
  State<ExamResultScreen> createState() => _ExamResultScreenState();
}

class _ExamResultScreenState extends State<ExamResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        iconData: Icons.point_of_sale_outlined,
        isCenter: false,
        caption: "",
      ),
      body: Container(
        color: this.widget.isSuccessed? Colors.lightGreenAccent: Colors.deepOrangeAccent,
        child: const Center(
          child: Text("İmtahan nəticəsi!"),
        ),
      ),
    );
  }
}
