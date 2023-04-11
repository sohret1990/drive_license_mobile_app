import 'package:drive_license_app/helpers/my_app_bar.dart';
import 'package:flutter/material.dart';

class RuleScreen extends StatefulWidget {
  const RuleScreen({Key? key}) : super(key: key);

  @override
  State<RuleScreen> createState() => _RuleScreenState();
}

class _RuleScreenState extends State<RuleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(iconData: null, isCenter: true, caption: "Qaydalar",),
      body: Center(
        child: Text("Qaydalar"),
      ),
    );
  }
}
