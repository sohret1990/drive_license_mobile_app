import 'package:flutter/material.dart';

class RuleScreen extends StatefulWidget {
  const RuleScreen({Key? key}) : super(key: key);

  @override
  State<RuleScreen> createState() => _RuleScreenState();
}

class _RuleScreenState extends State<RuleScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Qaydalar"),
      ),
    );
  }
}
