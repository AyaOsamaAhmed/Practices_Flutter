import 'package:flutter/cupertino.dart';

import 'database_helper.dart';
import 'student.dart';

class DataProvider extends ChangeNotifier {


   List<Student> _students = [];
  List<Student> get listStudent => _students;

   bool _isLoading = false ;
  bool get isLoading => _isLoading;


  Future<void> loadAllStudents () async{
    _isLoading = true ;
    notifyListeners();

    _students = await DatabaseHelper.instance.getAllStudents2();
    _isLoading = false;
    notifyListeners();
  }

  Future<void>  addStudent (Student student)async{
    await DatabaseHelper.instance.insertStudent2(student);
    await loadAllStudents();  //Refresh list
  }

  Future<void> deleteStudent( int id) async{
    await DatabaseHelper.instance.deleteStudent(id);
    await loadAllStudents(); // Refresh list
  }

  Future<void> deleteAllStudent() async{
    await DatabaseHelper.instance.deleteAllStudent();
    await loadAllStudents(); //Refresh list
  }


}