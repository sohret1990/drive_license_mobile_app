import 'package:drive_license_app/helpers/my_app_bar.dart';
import 'package:drive_license_app/models/question_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExamResultScreen extends StatefulWidget {
  const ExamResultScreen(
      {Key? key,
      required this.isSuccessed,
      required this.questionList,
      required this.answersList})
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
    var windowWidth = MediaQuery.of(context).size.width - 30;
    var windowHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: MyAppBar(
        iconData: null, // Icons.receipt_sharp,
        isCenter: true,
        caption: "Sizin imtahan nəticəniz",
      ),
      backgroundColor: Colors.indigoAccent,
      body: Container(
        alignment: Alignment.center,
        child: Container(
          width: windowWidth,
          height: windowHeight * 0.75,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9),
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  blurStyle: BlurStyle.solid,
                  blurRadius: 10),
              BoxShadow(
                  color: Colors.black26,
                  blurStyle: BlurStyle.solid,
                  blurRadius: 10),
              BoxShadow(
                  color: Colors.white,
                  blurStyle: BlurStyle.solid,
                  blurRadius: 10),
              BoxShadow(
                  color: Colors.black26,
                  blurStyle: BlurStyle.solid,
                  blurRadius: 10),
            ],
          ),
          alignment: Alignment.center,
          //height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                  this.widget.isSuccessed
                      ? "Təbriklər qazandınız!"
                      : "Təəssüf keçmədiniz!",
                  style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage(
                    "assets/images/${this.widget.isSuccessed ? "cup" : "game_over"}.png"),
                height: windowHeight / 6,
              ),
              SizedBox.fromSize(size: Size.fromHeight(20)),
              Text("Cəmi: 10", style: TextStyle(fontSize: 20)),
              SizedBox.fromSize(size: Size.fromHeight(5)),
              Text("Düzgün cavab: ${getCorrectAnswerCount()}",
                  style: TextStyle(fontSize: 20)),
              SizedBox.fromSize(size: Size.fromHeight(5)),
              Text("Səhv cavab: ${getWrongAnswerCount()}",
                  style: TextStyle(fontSize: 20)),
              SizedBox.fromSize(size: Size.fromHeight(5)),
              getQuestionPanel(),
              Spacer(),
              ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.refresh_outlined),
                      Text("Yenidən başla", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                  onPressed: () {
                    Get.offNamed("exam");
                  }, ),
              SizedBox.fromSize(size: Size.fromHeight(20)),
            ],
          ),
        ),
      ),
    );
  }

  Widget getQuestionPanel() {
    return Container(
        width: MediaQuery.of(context).size.width * 0.95,
        alignment: Alignment.center,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.questionList
              .map(
                (q) => Image(
                  width: (MediaQuery.of(context).size.width - 40) / 10,
                  height: (MediaQuery.of(context).size.width - 40) / 10 - 1,
                  image: AssetImage(
                      "assets/images/azpdd/button${checkQuestionAnswer(q) ? widget.questionList.indexOf(q) + 1 : "${widget.questionList.indexOf(q) + 1}selected"}.jpg"),
                ),
              )
              .toList(),
        ));
  }

  int getCorrectAnswerCount() {
    var questions = widget.questionList;
    var answers = widget.answersList;
    return answers.entries
        .where((x) =>
            questions
                .where((z) => z.id == x.key)
                .first
                .correctAnswer
                .answerNo ==
            x.value + 1)
        .length;
    //return questions.where((q) => q.correctAnswer.answerNo == answers.entries.where((z) => z.key == q.id).first.value ).length;
  }

  int getWrongAnswerCount() {
    var questions = widget.questionList;
    var answers = widget.answersList;
    return answers.entries
        .where((x) =>
            questions
                .where((z) => z.id == x.key)
                .first
                .correctAnswer
                .answerNo !=
            x.value + 1)
        .length;
  }

  bool checkQuestionAnswer(QuestionModel question) {
    var questions = widget.questionList;
    var answers = widget.answersList;
    return answers.entries
        .where((x) =>
            x.key == question.id &&
            x.value + 1 == question.correctAnswer.answerNo)
        .isNotEmpty;
  }
}
