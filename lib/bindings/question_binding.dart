import 'package:drive_license_app/controllers/question_controller.dart';
import 'package:get/get.dart';

class QuestionBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<QuestionController>(QuestionController());
  }
}
