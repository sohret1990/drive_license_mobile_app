import 'package:drive_license_app/controllers/rule_controller.dart';
import 'package:get/get.dart';

class RuleBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<RuleController>(RuleController());
  }
}