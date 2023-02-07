import 'package:flutter/material.dart';

class MyAppBar extends AppBar{

  String caption;
  IconData? iconData;
  bool? isCenter = true;

  MyAppBar({this.iconData, this.isCenter, required this.caption, }) {

    this.caption = caption;
    this.isCenter = isCenter;
    this.iconData = iconData;

  }

  @override
  // TODO: implement centerTitle
  bool? get centerTitle => this.isCenter;


@override
// TODO: implement title
  Widget? get title => this.iconData != null? Container(
    child: Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(this.iconData),
        Text(caption),
      ],
    ),
  ):Text(caption);


}