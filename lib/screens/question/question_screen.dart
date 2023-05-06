import 'dart:convert';

import 'package:drive_license_app/controllers/question_controller.dart';
import 'package:drive_license_app/helpers/my_app_bar.dart';
import 'package:drive_license_app/models/question_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionScreen extends StatelessWidget {
  QuestionScreen({Key? key}) : super(key: key);

  final QuestionController questionController = Get.find<QuestionController>();

  int currentIndex = 0;

  Future<List<QuestionModel>> getQuestionList() async {
    return await questionController.getQuestionlist();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        //iconData: null, // Icons.add_circle,
        isCenter: true,
        caption: "Suallar",
      ),
      body: FutureBuilder<List<QuestionModel>>(
        future: getQuestionList(),
        initialData: [],
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              itemCount: snapshot.data?.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              scrollDirection: Axis.vertical,
              itemBuilder: (contex, index) =>
                  getQuestions(snapshot.data!, index),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.indigoAccent,
              ),
            );
          }
        },
      ),
    );
  }

  Widget getQuestions(List<QuestionModel> model, int index) {
    var question = model[index];

    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.indigoAccent,
              width: 1.0,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignOutside)),
      alignment: Alignment.center,
      child: question.imagePath.isNull
          ? Text(
              model[index].nameAz,
              textAlign: TextAlign.center,
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: Image.memory(
                    base64.decode(question.imagePath!),
                    fit: BoxFit.fill,
                  ).image,
                ),
                Text(
                  question.nameAz,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
    );
  }
}
