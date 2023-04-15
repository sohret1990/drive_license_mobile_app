import 'package:drive_license_app/controllers/exam_controller.dart';
import 'package:drive_license_app/helpers/my_app_bar.dart';
import 'package:drive_license_app/models/question_model.dart';
import 'package:drive_license_app/screens/exam/exam_question_screen.dart';
import 'package:drive_license_app/screens/exam/exam_result_sreen.dart';
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
  var answerMap = new Map<int, int>();

  int mistakesCount = 0;
  int questionIndex = 0;

  Future<List<QuestionModel>> getList() async {
    if (questionList.length == 0)
      this.questionList = await _examController.getExamQuestions();
    return this.questionList;
  }

  changeQuestion(int value) {
    setState(() {
      this.questionIndex = value;
    });
  }

  incrementMistakes() {
    setState(() {
      this.mistakesCount = this.mistakesCount + 1;
    });
  }

  Widget build(BuildContext context) {
    if (this.mistakesCount > 1) {
      return const ExamResultScreen(
        isSuccessed: false,
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(35),
        child: MyAppBar(
          iconData: null, // Icons.checklist,
          isCenter: true,
          caption: "Sınaq imtahanı",
        ),
      ),
      body: FutureBuilder(
        future: getList(),
        initialData: this.questionList,
        builder: (context, snapshot) {
          Widget screen;
          if (snapshot.hasData && snapshot.data is List<QuestionModel>) {
            this.questionList = snapshot.data as List<QuestionModel>;

            if (this.questionList.isEmpty) {
              screen = Center(child: CircularProgressIndicator());
            } else {
              questionModel = snapshot.data![this.questionIndex];
              screen = ExamQuestionScreen(
                questionIndex: this.questionIndex,
                questionModel: this.questionModel!,
                questionList: this.questionList,
                changeQuestion: this.changeQuestion,
                answerMap: this.answerMap,
                mistakesCount: this.mistakesCount,
                incrementMistakes: this.incrementMistakes,
              );
            }
          } else if (snapshot.hasError) {
            screen = Center(child: Text('Xəta baş verdi!'));
          } else {
            screen = Center(child: CircularProgressIndicator());
          }
          return screen;
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: GestureDetector(
        child: Container(
          child: Icon(Icons.exit_to_app),
        ),
        onTap: (){
          Get.replace("home");
        },
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
