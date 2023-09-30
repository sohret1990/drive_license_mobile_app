import 'dart:convert';

import 'package:drive_license_app/bindings/exam_binding.dart';
import 'package:drive_license_app/bindings/subject_binding.dart';
import 'package:drive_license_app/helpers/app_config.dart';
import 'package:drive_license_app/screens/exam/exam_screen.dart';
import 'package:drive_license_app/screens/rule/rule_screen.dart';
import 'package:drive_license_app/screens/subject/subject_screent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'bindings/question_binding.dart';
import 'bindings/rule_binding.dart';
import 'screens/main_screen.dart';
import 'screens/question/question_screen.dart';
import 'themes/material_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   var data = jsonDecode( await rootBundle.loadString("assets/configuration/dev.json"));

   var conf = AppConfig.fromJson(data);

   Get.put(conf);
  runApp(const DriveLicenseApp());
}

class DriveLicenseApp extends StatelessWidget {
  const DriveLicenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().materialTheme,
      getPages: [
        GetPage(
            name: "/question",
            page: () => QuestionScreen(),
            binding: QuestionBinding()),
        GetPage(
            name: "/exam",
            page: () => const ExamScreen(),
            binding: ExamBinding()),
        GetPage(
            name: "/subject",
            page: () => const SubjectScreen(),
            binding: SubjectBinding()),
        GetPage(
            name: "/rule",
            page: () => const RuleScreen(),
            binding: RuleBinding()),
        GetPage(
          name: "/main",
          page: () => const MainScreen(),
        //  binding: RuleBinding(),
        ),
      ],
      home: const MainScreen(),
    );
  }
}
