import 'addStudents_mixin.dart';
import 'school_workers.dart';

class HeadTeacher extends SchoolWorkers with AddStudents {

  HeadTeacher(String name) : super(name: name);


}