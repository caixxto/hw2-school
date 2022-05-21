import 'addStudents_mixin.dart';
import 'school_workers.dart';

class Director extends SchoolWorkers with AddStudents {

  Director(String name) : super(name: name);

  String deleteStudents() {
    return 'delete';
  }

}