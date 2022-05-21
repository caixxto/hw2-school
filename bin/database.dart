import 'director.dart';
import 'headteacher.dart';
import 'school.dart';
import 'students.dart';
import 'classroom.dart';
import 'randomizer.dart';
import 'teacher.dart';

void main() {

  final alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  final index = alphabet.length;
  final int maxClasses = 10;
  final int maxGrades = 11;
  final int maxStudents = 5;
  
  School school = School(name: 'SchoolName', classes: maxClasses.randomize(maxClasses));

  final classrooms = List<Classroom>.empty(growable: true);

  for (int i = 0; i < school.classes; i++) {
    Classroom classroom = Classroom(grade: maxGrades.randomize(maxGrades), letter: alphabet[index.randomize(index)]);
    classrooms.add(classroom);
  }

  Teacher teacher = Teacher('TeacherName');
  HeadTeacher headTeacher = HeadTeacher('HeadteacherName');
  Director director = Director('DirectorName');

  Student student = Student(name: 'StudentName', canStudy: true);
  
  print('School ${school.name} contains ${school.classes} classes:');

  classrooms.forEach((el) {
    print('${el.grade}${el.letter} classroom with ${maxStudents.randomize(maxStudents)} students');
  });

  print('${teacher.name} can ${teacher.teachStudents()} students');
  print('${headTeacher.name} can ${headTeacher.teachStudents()} and ${headTeacher.addStudents()} students');
  print('${director.name} can ${director.teachStudents()}, ${director.addStudents()} and ${director.deleteStudents()} students');

}
