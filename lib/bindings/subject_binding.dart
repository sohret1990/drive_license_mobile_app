import 'package:drive_license_app/controllers/subject_controller.dart';
import 'package:get/get.dart';

class SubjectBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<SubjectController>(SubjectController());
  }
}