// ignore_for_file: sort_child_properties_last

import 'package:drive_license_app/models/question_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExamAnswer extends StatelessWidget {
  const ExamAnswer({Key? key, required this.questionModel, required this.answerMap})
      : super(key: key);
  final QuestionModel questionModel;
  final Map<int, int> answerMap ;

  Color getColor(int index) {
    Color bg = Colors.white;

    if (answerMap.containsKey(questionModel.id) &&
        answerMap.entries.firstWhere((x) => x.key == questionModel.id).value ==
            index) {
      var selectedAnswerNo =
          answerMap.entries.firstWhere((x) => x.key == questionModel.id).value;
      if (selectedAnswerNo + 1 == questionModel.correctAnswer.answerNo) {
        bg = Colors.green;
      } else {
        bg = Colors.red;
      }
    }
    return bg;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView.builder(
          itemCount: questionModel.questionAnswer.length,
          itemBuilder: (context, index) {
            var answer = questionModel.questionAnswer[index];
            return Card(
              child: ListTile(
                enabled: answerMap[questionModel.id] == null,
                tileColor: getColor(index),
                onTap: () async {
                  //check question option
                  if (answerMap[questionModel.id] != null) return;

                  answerMap[questionModel.id] = index;
                  getColor(index);
                },
                leading: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('${index + 1}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    gradient: const RadialGradient(
                        colors: [Colors.tealAccent, Colors.teal]),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.teal.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                title: Text(
                  answer.answer.nameAz,
                  style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 11),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
