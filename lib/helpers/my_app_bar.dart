import 'package:flutter/material.dart';

class MyAppBar extends AppBar{

  final String caption;
  bool isCenter = true;

  MyAppBar({required this.caption, isCenter});

  @override 
  // TODO: implement title
  Widget? get title => Text(caption);

  @override
  // TODO: implement centerTitle
  bool? get centerTitle => isCenter;
}