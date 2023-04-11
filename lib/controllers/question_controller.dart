import 'package:dio/dio.dart';
import 'package:drive_license_app/models/question_model.dart';
import 'package:drive_license_app/services/request_helper.dart';

import 'base_controller.dart';

class QuestionController extends BaseController {
  Future<List<QuestionModel>> getQuestionlist() async {
    Response<dynamic> data = await RequestHelper().getData("/questions");

    var list = data.data as List<dynamic>;
    var dataList = list.map((e) => QuestionModel.fromJson(e));
    print(dataList);
    return dataList.toList();
  }
}
