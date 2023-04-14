import 'dart:convert';

import 'package:drive_license_app/controllers/exam_controller.dart';
import 'package:drive_license_app/helpers/my_app_bar.dart';
import 'package:drive_license_app/models/question_model.dart';
import 'package:drive_license_app/screens/exam/exam_answer_screen.dart';
import 'package:drive_license_app/screens/exam/exam_question_number_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ExamQuestionScreen extends StatefulWidget {
  ExamQuestionScreen({Key? key, required this.questionModel, required this.questionIndex, required this.questionList, required this.changeQuestion,required this.answerMap}) : super(key: key);

  final QuestionModel questionModel;
  final List<QuestionModel> questionList;
  int questionIndex;
  final Map<int, int> answerMap;
  Function changeQuestion;

  @override
  State<ExamQuestionScreen> createState() => _ExamQuestionScreenState();
}

class _ExamQuestionScreenState extends State<ExamQuestionScreen> {

  changeQuestion(int value) {
    this.widget.changeQuestion(value);
  }

  Widget get getQuestion => (this.widget.questionModel.imagePath ?? '').length > 0
      ?
  // check if imagePath exists. Here is the problem
  Column(
    mainAxisSize: MainAxisSize.max,
    children: [
      Image.memory(
        base64.decode(this.widget.questionModel.imagePath!),
        width: MediaQuery.of(context).size.width,
        height: 95,
        fit: BoxFit.fill,
      ),
      Expanded(
        //margin: EdgeInsets.only(top: 6),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              this.widget.questionModel.nameAz,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ],
  )
      :
  // if not
  Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Center(
        child: Text(
          this.widget.questionModel.nameAz,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );


  @override
  Widget build(BuildContext context) {
    return Center(
      child: this.widget.questionModel == null
          ? CircularProgressIndicator()
          : Column(
        children: [
          ExamQuestionNumberScreen(questionIndex: this.widget.questionIndex, questionList: this.widget.questionList, changeQuestion: this.changeQuestion),
          Expanded(
            flex: 5,
            child: Card(
              margin: EdgeInsets.all(6),
              color: Colors.teal[200],
              child: Center(
                  child:  getQuestion,
              ),
            ),
          ),
          ExamAnswer(questionModel: this.widget.questionModel, answerMap: this.widget.answerMap,questionList: this.widget.questionList,)
        ],
      ),
    );
  }
}
