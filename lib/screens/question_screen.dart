import 'package:drive_license_app/controllers/question_controller.dart';
import 'package:drive_license_app/helpers/my_app_bar.dart';
import 'package:drive_license_app/models/question_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionScreen extends StatelessWidget {
  QuestionScreen({Key? key}) : super(key: key);

  final QuestionController questionController = Get.find<QuestionController>();

  Future<List<QuestionModel>> getQuestionList() async {
    return await questionController.getQuestionlist();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        iconData: Icons.add_circle,
        isCenter: true,
        caption: "Suallar",
      ),
      body: FutureBuilder(
        future: getQuestionList(),
        initialData: [],
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var question = snapshot.data![index] as QuestionModel;
                  return Card(
                    child: ListTile(
                      title: Text(
                        '${index + 1}. ${question.nameAz}',
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  );
                });
          } else if (snapshot.hasError)
            return Center(
              child: Text('${snapshot.error}'),
            );
          else
            return Center(
              child: CircularProgressIndicator(
                color: Colors.teal,
              ),
            );
        },
      ),
    );
  }
}
