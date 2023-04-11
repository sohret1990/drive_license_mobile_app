// ignore_for_file: sort_child_properties_last

import 'package:drive_license_app/models/question_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExamAnswer extends StatefulWidget {
  const ExamAnswer({Key? key, required this.questionModel, required this.answerMap})
      : super(key: key);
  final QuestionModel questionModel;
  final Map<int, int> answerMap ;

  @override
  State<ExamAnswer> createState() => _ExamAnswerState();
}

class _ExamAnswerState extends State<ExamAnswer> {
  Color getColor(int index) {
    Color bg = Colors.white;

    if (widget.answerMap.containsKey(widget.questionModel.id) &&
        widget.answerMap.entries.firstWhere((x) => x.key == widget.questionModel.id).value ==
            index) {
      var selectedAnswerNo =
          widget.answerMap.entries.firstWhere((x) => x.key == widget.questionModel.id).value;
      if (selectedAnswerNo + 1 == widget.questionModel.correctAnswer.answerNo) {
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
          itemCount: widget.questionModel.questionAnswer.length,
          itemBuilder: (context, index) {
            var answer = widget.questionModel.questionAnswer[index];
            return Card(
              child: ListTile(
                enabled: widget.answerMap[widget.questionModel.id] == null,
                tileColor: getColor(index),
                onTap: () async {
                  //check question option
                  if (widget.answerMap[widget.questionModel.id] != null) return;
                  widget.answerMap[widget.questionModel.id] = index;
                  setState(() {
                    getColor(index);
                  });
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
