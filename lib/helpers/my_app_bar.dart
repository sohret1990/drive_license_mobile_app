import 'package:flutter/material.dart';

class MyAppBar extends AppBar{

  String caption;
  IconData? iconData;
  bool? isCenter = true;

  MyAppBar({this.iconData, this.isCenter, required this.caption, }) {

    caption = caption;
    isCenter = isCenter;
    iconData = iconData;

  }

  @override
  // TODO: implement centerTitle
  bool? get centerTitle => this.isCenter;


@override
// TODO: implement title
  Widget? get title => iconData != null? Row(
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Icon(iconData),
      Text(caption),
    ],
  ):Text(caption);


}