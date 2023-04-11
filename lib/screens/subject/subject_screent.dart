import 'package:drive_license_app/controllers/subject_controller.dart';
import 'package:drive_license_app/helpers/my_app_bar.dart';
import 'package:drive_license_app/models/subject_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubjectScreen extends StatefulWidget {
  const SubjectScreen({Key? key}) : super(key: key);

  @override
  State<SubjectScreen> createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen> {
  SubjectController _subjectController = Get.find<SubjectController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        iconData: null,
        isCenter: true,
        caption: "Mövzular",
      ),
      body: FutureBuilder<List<SubjectModel>>(
        future: _subjectController.getSubjects(),
        initialData: [],
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else if (snapshot.hasData && snapshot.data is List<SubjectModel>) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var section = snapshot.data![index];
                  return GestureDetector(
                    onTap: (){
                      Get.defaultDialog(title: section.nameAz);
                    },
                    child: Card(
                      child: ListTile(
                        title: Text(section.nameAz),
                        leading: Container(
                          alignment: Alignment.center,
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            gradient: const RadialGradient(
                                colors: [Colors.tealAccent, Colors.teal]),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.teal.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 1,
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Text("${index+1}", style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  );
                });
          } else {
            return  Center(
              child: CircularProgressIndicator(
                color: Colors.teal,
              ),
            );
          }
        },
      ),
    );
  }
}
