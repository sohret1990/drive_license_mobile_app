import 'package:drive_license_app/controllers/base_controller.dart';
import 'package:drive_license_app/models/subject_model.dart';
import 'package:drive_license_app/services/request_helper.dart';

class SubjectController extends BaseController{
  Future<List<SubjectModel>> getSubjects() async {
    var data = await RequestHelper().getData("/section") ;
    var list = data.data as List<dynamic>;
    var dataList = list.map((e) => SubjectModel.fromJson(e));

    return dataList.toList();
  }
}