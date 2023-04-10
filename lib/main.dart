import 'package:drive_license_app/bindings/exam_binding.dart';
import 'package:drive_license_app/bindings/subject_binding.dart';
import 'package:drive_license_app/screens/exam/exam_screen.dart';
import 'package:drive_license_app/screens/rule/rule_screen.dart';
import 'package:drive_license_app/screens/subject/subject_screent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/question_binding.dart';
import 'bindings/rule_binding.dart';
import 'screens/main_screen.dart';
import 'screens/question/question_screen.dart';
import 'themes/material_theme.dart';

void main() {
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
            page: () => ExamScreen(),
            binding: ExamBinding()),
        GetPage(
            name: "/subject",
            page: () => SubjectScreen(),
            binding: SubjectBinding()),
        GetPage(
            name: "/rule",
            page: () => RuleScreen(),
            binding: RuleBinding()),
      ],
      home: MainScreen(),
    );
  }
}
