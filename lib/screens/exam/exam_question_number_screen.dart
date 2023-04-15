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
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: questionList.length,
            itemBuilder: (context, index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTapDown: (details) {
                      this.changeQuestion(index);
                    },
                    child: Container(
                      width: 30,
                      height: 10,
                      decoration: questionIndex != index
                          ? BoxDecoration(
                              gradient: const RadialGradient(
                                  colors: [Colors.tealAccent, Colors.teal]),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.teal.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 1,
                                  offset: const Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            )
                          : BoxDecoration(
                              gradient: const RadialGradient(
                                  colors: [Colors.orangeAccent, Colors.orange]),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.orange.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 1,
                                  offset: const Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                      margin: const EdgeInsets.only(left: 1, right: 1),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Text('${index + 1}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              );
            }),
      ),
    );
  }
}
