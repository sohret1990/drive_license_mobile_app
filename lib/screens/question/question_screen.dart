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

            return ListView.builder(itemCount: snapshot.data!.length, itemBuilder: (ctx, index){
              var question = snapshot.data![index];
              return Card(
                child: ListTile(
                  leading: question.imagePath!=null? GestureDetector(
                    onTap: (){

                      showDialog(
                          context: context,
                          builder: (ctx){
                        return GestureDetector(
                          onTap: (){
                            Navigator.pop(ctx);
                          },
                          child: SizedBox(
                            height: MediaQuery.of(ctx).size.height * 0.60,
                            child: Image(
                              width: MediaQuery.of(ctx).size.width * 0.95,
                              image: Image.memory(
                                base64.decode(question.imagePath!),
                                fit: BoxFit.cover,
                              ).image,
                            ),
                          ),
                        );
                      });
                    },
                    child: Image(
                      width: 100,
                      image: Image.memory(
                        base64.decode(question.imagePath!),
                        fit: BoxFit.cover,
                      ).image,
                    ),
                  ):null,
                  title: Text(question.nameAz),
                  subtitle: Text(question.questionAnswer[question.correctAnswer.answerNo-1].answer.nameAz),
                ),
              );
            });

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
}
