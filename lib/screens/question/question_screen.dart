import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:drive_license_app/controllers/question_controller.dart';
import 'package:drive_license_app/helpers/my_app_bar.dart';
import 'package:drive_license_app/models/question_model.dart';
import 'package:drive_license_app/screens/question/question_item.dart';
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
      body: FutureBuilder(
        future: getQuestionList(),
        initialData: [],
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data is List<QuestionModel>) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var question = snapshot.data![index] as QuestionModel;
                  return QuestionItem(
                    model: question,
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){  },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeIndex: 0,
        onTap: (index){},
        icons: [
          Icons.list,
          //Icons.home,
          Icons.question_mark
        ],
        gapLocation: GapLocation.center,
        activeColor: Colors.teal,
        blurEffect: true,
      ),
    );
  }
}
