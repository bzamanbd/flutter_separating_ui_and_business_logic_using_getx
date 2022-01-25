import '../widgets/students_info.dart';

import 'package:get/get.dart';

class StudentsController extends GetxController {
  var students = StudentsInfo();

  void convertToUpperCase() {
    students.name.value = students.name.value.toUpperCase();
  }
}
