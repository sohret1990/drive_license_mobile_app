import 'dart:convert';

import 'package:drive_license_app/models/question_model.dart';
import 'package:drive_license_app/screens/exam/exam_answer_screen.dart';
import 'package:drive_license_app/screens/exam/exam_question_number_screen.dart';
import 'package:flutter/material.dart';

class ExamQuestionScreen extends StatefulWidget {
  ExamQuestionScreen({
    Key? key,
    required this.questionModel,
    required this.questionIndex,
    required this.questionList,
    required this.changeQuestion,
    required this.answerMap,
    required this.mistakesCount,
    required this.incrementMistakes,
  }) : super(key: key);

  final QuestionModel questionModel;
  final List<QuestionModel> questionList;
  int questionIndex;
  final Map<int, int> answerMap;
  final int mistakesCount;

  Function changeQuestion;
  Function incrementMistakes;

  @override
  State<ExamQuestionScreen> createState() => _ExamQuestionScreenState();
}

class _ExamQuestionScreenState extends State<ExamQuestionScreen> {
  changeQuestion(int value) {
    this.widget.changeQuestion(value);
  }

  incrementMistakes() {
    this.widget.incrementMistakes();
  }

  Widget get getQuestion =>
      (this.widget.questionModel.imagePath ?? '').length > 0
          ?
          // check if imagePath exists. Here is the problem
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: Colors.indigoAccent),
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Image.memory(
                    base64.decode(this.widget.questionModel.imagePath!),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.25,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Color.fromARGB(151, 109, 175, 243),
                  ),
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    this.widget.questionModel.nameAz,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ],
            )
          :
          // if not
          Container(
            alignment: Alignment.center,
              margin: EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color.fromARGB(151, 109, 175, 243),
              ),
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 2,
              child: Center(
                child: Text(
                  this.widget.questionModel.nameAz,
                  style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
              ),
            );

  @override
  Widget build(BuildContext context) {
    return widget.questionModel == null
        ? const CircularProgressIndicator()
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              ExamQuestionNumberScreen(
                questionIndex: widget.questionIndex,
                questionList: widget.questionList,
                changeQuestion: this.changeQuestion,
              ),
              getQuestion,
              ExamAnswer(
                questionModel: this.widget.questionModel,
                answerMap: this.widget.answerMap,
                questionList: this.widget.questionList,
                mistakesCount: this.widget.mistakesCount,
                incrementMistakes: this.incrementMistakes,
              )
            ],
          );
  }
}
