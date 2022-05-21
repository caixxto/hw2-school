import 'database.dart';

class Student {

  final String name;
  final bool canStudy;

  Student({required this.name, required this.canStudy});

  String studySchool() => 'can go to school';
  String studyHome() => 'cant go to school and studying at home';

}