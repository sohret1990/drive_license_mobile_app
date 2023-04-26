import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  String caption;
  IconData? iconData;
  bool? isCenter = true;
  Widget? lead;
  List<Widget>? actionList;

  MyAppBar({this.iconData, this.isCenter, required this.caption, this.lead, this.actionList}) {
    caption = caption;
    isCenter = isCenter;
    iconData = iconData;
    lead = lead;
    actionList = actionList;
  }

  @override
  // TODO: implement actions
  List<Widget>? get actions => actionList;

  @override
  // TODO: implement centerTitle
  bool? get centerTitle => this.isCenter;

  @override
  // TODO: implement leading
  Widget? get leading => lead;

  @override
// TODO: implement title
  Widget? get title => iconData != null
      ? Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(iconData),
            Text(caption),
          ],
        )
      : Text(caption);
}
