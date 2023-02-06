import 'package:drive_license_app/models/question_model.dart';
import 'package:flutter/material.dart';

class ExamQuestionNumberScreen extends StatefulWidget {
  ExamQuestionNumberScreen({Key? key, required this.questionIndex, required this.questionList, required this.changeQuestion }) : super(key: key);
  int questionIndex ;
  final List<QuestionModel> questionList;

  Function changeQuestion;

  @override
  State<ExamQuestionNumberScreen> createState() => _ExamQuestionNumberScreenState();
}

class _ExamQuestionNumberScreenState extends State<ExamQuestionNumberScreen> {

 /* @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: this.widget.questionList.length,
            itemBuilder: (context, index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTapDown: (details) {
                      this.widget.changeQuestion(index);
                    },
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: Text('${index + 1}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                      ),
                      width: 30,
                      height: 10,
                      decoration: this.widget.questionIndex != index
                          ? BoxDecoration(
                        gradient: RadialGradient(colors: [
                          Colors.tealAccent,
                          Colors.teal
                        ]),
                        borderRadius:
                        BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.teal
                                .withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: Offset(0,
                                1), // changes position of shadow
                          ),
                        ],
                      )
                          : BoxDecoration(
                        gradient: RadialGradient(colors: [
                          Colors.orangeAccent,
                          Colors.orange
                        ]),
                        borderRadius:
                        BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.orange
                                .withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: Offset(0,
                                1), // changes position of shadow
                          ),
                        ],
                      ),
                      margin: EdgeInsets.only(left: 1, right: 1),
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
