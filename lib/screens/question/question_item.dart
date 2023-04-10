import 'dart:convert';

import 'package:drive_license_app/models/question_model.dart';
import 'package:flutter/material.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({ required this.model});

  final QuestionModel model;

  @override
  Widget build(BuildContext context) {

    Widget widget;

    widget = (model.imagePath ?? '').length > 0
        ? Card(
            child: ListTile(

            title: Text(
              model.nameAz,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
            ),
          ))
        :
        // if not
        Card(
            child: ListTile(
              title: Text(
                this.model.nameAz,
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
              ),
            ),
          );

    return widget;
  }
}
