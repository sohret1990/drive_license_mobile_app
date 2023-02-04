import 'package:drive_license_app/models/question_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExamAnswer extends StatelessWidget {
  const ExamAnswer({Key? key, required this.questionModel}) : super(key: key);
  final QuestionModel questionModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView.builder(
          itemCount: this.questionModel == null
              ? 0
              : this.questionModel!.questionAnswer.length,
          itemBuilder: (context, index) {
            var answer =
            this.questionModel!.questionAnswer[index];
            return Card(
              child: ListTile(
                onTap: (){
                  if(index+1 == questionModel!.correctAnswer.answerNo){
                    Get.defaultDialog(title:'Təbriklər oğru cavablandırdınız!',  );
                  }else{
                    Get.defaultDialog(title:'Təəssüf cavab səhvdir!',  );
                  }
                },
                leading: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('${index + 1}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold),
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
                        offset: Offset(
                            0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                title: Text(
                  '${answer.answer.nameAz}',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 11),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
