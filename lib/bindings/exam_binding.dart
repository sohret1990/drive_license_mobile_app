import 'package:drive_license_app/controllers/exam_controller.dart';
import 'package:drive_license_app/controllers/question_controller.dart';
import 'package:get/get.dart';

class ExamBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ExamController>(ExamController());
    Get.put<QuestionController>(QuestionController());
  }
}
