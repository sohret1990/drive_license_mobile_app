import 'dart:convert';

import 'package:drive_license_app/models/question_model.dart';
import 'package:drive_license_app/services/request_helper.dart';

import 'base_controller.dart';

class ExamController extends BaseController {
  Future<QuestionModel> getNextQuestion(int id) async {
    var data = await RequestHelper().getData("/questions/${id}") ;
    var q =  QuestionModel.fromJson(data.data as Map<String, dynamic>);
   //print((data.data as Map<String, dynamic>)['imagePath'].toString());
    return q;
  }
}
