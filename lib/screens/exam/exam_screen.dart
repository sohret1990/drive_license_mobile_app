import 'package:drive_license_app/controllers/exam_controller.dart';
import 'package:drive_license_app/helpers/my_app_bar.dart';
import 'package:drive_license_app/models/question_model.dart';
import 'package:drive_license_app/screens/exam/exam_question_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({Key? key}) : super(key: key);

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  ExamController _examController = Get.find<ExamController>();
  QuestionModel? questionModel;
  List<QuestionModel> questionList = [];

  int questionIndex = 0;

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: MyAppBar(
          iconData: Icons.checklist,
          isCenter: true,
          caption: "Sınaq imtahanı",
        ),
      ),
      body: FutureBuilder(
        future: _examController.getExamQuestions(),
        initialData: [],
        builder: (context, snapshot) {
          Widget screen;
          if (snapshot.hasData) {
            this.questionList = snapshot!.data as List<QuestionModel>;
            questionModel = snapshot.data![this.questionIndex];
            screen = ExamQuestionScreen(
              questionIndex: this.questionIndex,
              questionModel: this.questionModel!,
              questionList: this.questionList,
            );
          } else if (snapshot.hasError) {
            screen = Center(child: Text('Xəta baş verdi!'));
          } else {
            screen = Center(child: CircularProgressIndicator());
          }
          return screen;
        },
      ),
    );
  }
}
