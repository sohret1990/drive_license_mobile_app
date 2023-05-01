import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: MyAppBar(iconData: Icons.drive_eta_rounded, isCenter: true, caption:"Sürücülük imtahanı", ),
      body: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient (
            tileMode: TileMode.clamp,
            colors: [
              Colors.indigoAccent,
              Colors.indigoAccent,
            ],
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 30,
                    blurStyle: BlurStyle.inner,
                    offset: Offset.fromDirection(20),
                    spreadRadius: 10),
              ],
            ),
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.values[1],
              children: [
                /*   SizedBox(
                  height: 50,
                ),*/
                Text(
                  "Sürücülük vəsiqəsi",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, letterSpacing: 3),
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
                    children: const [Icon(Icons.subject), Text("Mövzular")],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/question");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
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
                    children: const [Icon(Icons.rule), Text("Qaydalar")],
                  ),
                ),
                /* SizedBox(
                  height: 50,
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
