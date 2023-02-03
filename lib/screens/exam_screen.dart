import 'dart:convert';
import 'dart:math';

import 'package:drive_license_app/controllers/exam_controller.dart';
import 'package:drive_license_app/helpers/my_app_bar.dart';
import 'package:drive_license_app/models/question_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({Key? key}) : super(key: key);

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  ExamController _questionController = Get.find<ExamController>();
  QuestionModel? questionModel;

  Random random = new Random();

  @override
  void initState() {
    getQuestionById();
  }

  Widget get getQuestion =>
      (this.questionModel!.imagePath??'').length > 0?
      // check if imagePath exists. Here is the problem
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.memory(
            base64.decode(this.questionModel!.imagePath!),
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 90,
            fit: BoxFit.fill,
          ),
          Container(
            margin: EdgeInsets.only(top: 3),
            child: Text(
              this.questionModel!.nameAz,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
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
              this.questionModel!.nameAz,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      );




int questionIndex = 1;

//int questionId = 0;
//String questionText = '';

void getQuestionById() {
  this.questionModel =
      QuestionModel(id: 0, nameAz: '', nameRu: '', nameEn: '');
  int randomNumber = random.nextInt(1503);
  _questionController.getNextQuestion(randomNumber).then((value) =>
  {
    setState(() {
      this.questionModel = value;
    })
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: MyAppBar(
      iconData: Icons.checklist,
      isCenter: true,
      caption: "Sınaq imtahanı",
    ),
    body: Center(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTapDown: (details) {
                            setState(() {
                              this.questionIndex = index + 1;
                              getQuestionById();
                            });
                          },
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.all(6),
                              child: Text('${index + 1}',
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center),
                            ),
                            width: 30,
                            height: 10,
                            decoration: this.questionIndex != index + 1
                                ? BoxDecoration(
                              gradient: RadialGradient(colors: [
                                Colors.tealAccent,
                                Colors.teal
                              ]),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.teal.withOpacity(0.5),
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
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.orange.withOpacity(0.5),
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
          ),
          Expanded(
            flex: 4,
            child: Card(
              margin: EdgeInsets.all(6),
              color: Colors.teal[200],
              child: Center(
                child: getQuestion,
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('${index + 1}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                        ),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                              colors: [Colors.tealAccent, Colors.teal]),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.teal.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 1,
                              offset:
                              Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                      title: Text(
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    ),
  );
}}
