// ignore_for_file: sort_child_properties_last

import 'package:drive_license_app/models/question_model.dart';
import 'package:flutter/material.dart';

class ExamAnswer extends StatefulWidget {
  ExamAnswer({
    Key? key,
    required this.questionModel,
    required this.answerMap,
    required this.questionList,
    required this.mistakesCount,
    required this.incrementMistakes,
  }) : super(key: key);

  final QuestionModel questionModel;
  final List<QuestionModel> questionList;
  final Map<int, int> answerMap;
  final int mistakesCount;

  final Function incrementMistakes;

  @override
  State<ExamAnswer> createState() => _ExamAnswerState();
}

class _ExamAnswerState extends State<ExamAnswer> {
  Color getColor(int index) {
    Color bg = Colors.white;

    if (widget.answerMap.containsKey(widget.questionModel.id) &&
        widget.answerMap.entries
                .firstWhere((x) => x.key == widget.questionModel.id)
                .value ==
            index) {
      var selectedAnswerNo = widget.answerMap.entries
          .firstWhere((x) => x.key == widget.questionModel.id)
          .value;
      if (selectedAnswerNo + 1 == widget.questionModel.correctAnswer.answerNo) {
        bg = Colors.green;
      } else {
        bg = Colors.red;
      }
    }
    return bg;
  }

  _ExamAnswerState() {}

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
                enabled: widget.answerMap[widget.questionModel.id] == null &&
                    this.widget.mistakesCount <= 1,
                tileColor: getColor(index),
                onTap: () async {
                  //check question option
                  if (widget.answerMap[widget.questionModel.id] != null) return;

                  widget.answerMap[widget.questionModel.id] = index;
                  setState(() {
                    getColor(index);
                  });

                  if (widget.questionModel.correctAnswer.answerNo !=
                      index + 1) {
                    this.widget.incrementMistakes();
                  }
                },
                leading: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('${index + 1}',
                        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        textAlign: TextAlign.center,),
                  ),
                  width: 30,
                  height: 30,
                  //color: Color.fromARGB(151, 109, 175, 243),
                  decoration: BoxDecoration(
                    gradient: const RadialGradient(
                        colors: [Color.fromARGB(151, 109, 175, 243), Colors.indigo]),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.indigo.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                title: Text(
                  answer.answer.nameAz,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 11),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
