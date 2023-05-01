import 'package:drive_license_app/models/question_model.dart';
import 'package:flutter/material.dart';

class ExamQuestionNumberScreen extends StatelessWidget {
  ExamQuestionNumberScreen({
    Key? key,
    required this.questionIndex,
    required this.questionList,
    required this.changeQuestion,
  }) : super(key: key);
  int questionIndex;

  final List<QuestionModel> questionList;

  Function changeQuestion;

  @override
  Widget build(BuildContext context) {
    var index = 0;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: Row(
        children: getQuestionNumbers(context),
      ),
    );
  }

  List<Widget> getQuestionNumbers(BuildContext context) {
    return questionList
        .map((e) => GestureDetector(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 10,
                height: MediaQuery.of(context).size.width / 10 * 0.95,
                child: questionList.indexOf(e) == questionIndex
                    ? Image(
                        image: AssetImage(
                            "assets/images/azpdd/button${questionList.indexOf(e) + 1}selected.jpg"),
                      )
                    : Image(
                        image: AssetImage(
                            "assets/images/azpdd/button${questionList.indexOf(e) + 1}.jpg"),
                      ),
              ),
              onTap: () {
                if (questionList.indexOf(e) != questionIndex) {
                  this.changeQuestion(questionList.indexOf(e));
                }
              },
            ))
        .toList();
  }
}
