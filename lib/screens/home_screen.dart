import 'package:flutter/material.dart';
import '../getx_controllers/students_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  final String title;
  HomeScreen({Key? key, required this.title}) : super(key: key);

  StudentsController studentController = Get.put(StudentsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(()=> Text('Name is : ${studentController.students.name}',
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
            )
            ),

            const SizedBox(height: 30,),
            ElevatedButton(
              child: const Text('Upper',textScaleFactor: 1.2,),
              onPressed: studentController.convertToUpperCase,
              )
          ],
        ),
      ),
    );
  }
}
