import 'package:flutter/material.dart';

class ExamResult extends StatefulWidget {
  const ExamResult({Key? key}) : super(key: key);

  @override
  State<ExamResult> createState() => _ExamResultState();
}

class _ExamResultState extends State<ExamResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("İmtahan nəticəsi!"),
        ),
      ),
    );
  }
}
