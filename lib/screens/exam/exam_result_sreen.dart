import 'package:drive_license_app/helpers/my_app_bar.dart';
import 'package:drive_license_app/models/question_model.dart';
import 'package:flutter/material.dart';

class ExamResultScreen extends StatefulWidget {
  const ExamResultScreen({Key? key,
    required this.isSuccessed,
    required this.questionList,
    required this.answersList})
      : super(key: key);
  final bool isSuccessed;
  final List<QuestionModel> questionList;
  final Map<int, int> answersList;

  @override
  State<ExamResultScreen> createState() => _ExamResultScreenState();
}

class _ExamResultScreenState extends State<ExamResultScreen> {
  @override
  Widget build(BuildContext context) {
    var windowWidth = MediaQuery
        .of(context)
        .size
        .width;
    var windowHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      appBar: MyAppBar(
        iconData: null, // Icons.receipt_sharp,
        isCenter: false,
        caption: "",
      ),
      backgroundColor: Colors.indigoAccent,
      body: Container(
        alignment: Alignment.center,
        child: Container(
          width: windowWidth - 80,
          height: windowHeight / 1.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  blurStyle: BlurStyle.solid,
                  blurRadius: 20),
              BoxShadow(
                  color: Colors.black26,
                  blurStyle: BlurStyle.solid,
                  blurRadius: 20),
              BoxShadow(
                  color: Colors.white,
                  blurStyle: BlurStyle.solid,
                  blurRadius: 20),
              BoxShadow(
                  color: Colors.black26,
                  blurStyle: BlurStyle.solid,
                  blurRadius: 20),
            ],
          ),
          alignment: Alignment.center,
          //height: 80,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                Text("Təbriklər qazandınız!", style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 20,
            ),
            Image(
              image: AssetImage("assets/images/cup.png"),
              height: windowHeight / 6,
            ),
            /*SizedBox.fromSize(size: Size.fromHeight(20)),
                  Text("Cəmi: 10", style: TextStyle(fontSize: 20)),
                  SizedBox.fromSize(size: Size.fromHeight(5)),
                  Text("Düzgün cavab: 3", style: TextStyle(fontSize: 20)),
                  SizedBox.fromSize(size: Size.fromHeight(5)),
                  Text("Səhv cavab: 7", style: TextStyle(fontSize: 20)),
                  SizedBox.fromSize(size: Size.fromHeight(5)),*/

            /*List<int>.generate(2, (1) => Image(
            image: AssetImage(
            "assets/images/azpdd/button${index + 1}.jpg",
            ),
            height: 10,
            width: 10,
          ),
        ),*/
        ],
      ),
    ),)
    ,
    )
    );
  }
}
