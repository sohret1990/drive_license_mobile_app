import 'package:drive_license_app/helpers/my_app_bar.dart';
import 'package:drive_license_app/models/question_model.dart';
import 'package:flutter/material.dart';

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
    var windowWidth = MediaQuery.of(context).size.width;
    var windowHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: MyAppBar(
        iconData: null, // Icons.receipt_sharp,
        isCenter: false,
        caption: "",
      ),
      backgroundColor: Colors.indigoAccent,
      body: Container(
        alignment: Alignment.center,
        child: Container(
          width: windowWidth - 80,
          height: windowHeight / 1.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  blurStyle: BlurStyle.solid,
                  blurRadius: 20),
              BoxShadow(
                  color: Colors.black26,
                  blurStyle: BlurStyle.solid,
                  blurRadius: 20),
              BoxShadow(
                  color: Colors.white,
                  blurStyle: BlurStyle.solid,
                  blurRadius: 20),
              BoxShadow(
                  color: Colors.black26,
                  blurStyle: BlurStyle.solid,
                  blurRadius: 20),
            ],
          ),
          alignment: Alignment.center,
          //height: 80,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                Text("Düzgün cavab: ${getCorrectAnswerCount()}", style: TextStyle(fontSize: 20)),
                SizedBox.fromSize(size: Size.fromHeight(5)),
                Text("Səhv cavab: ${getWrongAnswerCount()}", style: TextStyle(fontSize: 20)),
                SizedBox.fromSize(size: Size.fromHeight(5)),
                getQuestionPanel(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getQuestionPanel() {
    return Expanded(
      flex: 1,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: this.widget.questionList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image(
                width: 20,
                height: 20,
                image: AssetImage(
                    "assets/images/azpdd/button${(index % 2 == 0) ? "${index + 1}selected" : index + 1}.jpg"),
              ),
            );
          }),
    );
  }

  int getCorrectAnswerCount(){
    var questions =this.widget.questionList;
    var answers =this.widget.answersList;
    return questions.where((q) => q.correctAnswer.answerNo == answers.entries ).length;
  }

  int getWrongAnswerCount(){
    return this.widget.questionList.where((element) => element.correctAnswer.answerNo == 1).length;
  }
}
