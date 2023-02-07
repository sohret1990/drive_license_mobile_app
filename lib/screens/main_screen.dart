import 'package:drive_license_app/helpers/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(iconData: Icons.drive_eta_rounded, isCenter: true, caption:"Sürücülük imtahanı", ),
      body: Container(
        decoration: BoxDecoration(
          gradient: const SweepGradient(
            colors: [
              Colors.teal,
              Colors.tealAccent,
              Colors.teal,
            ],
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.values[1],
            children: [
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.offNamed("/exam");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.run_circle_outlined),
                    Text("Başla"),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/subject");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Icon(Icons.subject), Text("Mövzular")],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/question");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.question_mark_outlined),
                    Text("Suallar")
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/rule");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Icon(Icons.rule), Text("Qaydalar")],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
