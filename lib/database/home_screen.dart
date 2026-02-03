import 'package:flutter/material.dart';
import 'package:untitled/database/database_helper.dart';
import 'package:untitled/database/student.dart';
import 'package:untitled/facebook/widget/custom_elevated_button.dart';
import 'package:untitled/facebook/widget/custom_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Student> students = [];
  final nameController = TextEditingController();
  final ageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadAllStudents();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student class'),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(hintText: 'name', keyboardType: TextInputType.name , controller: nameController,) ,
              CustomTextField(hintText: 'age', keyboardType: TextInputType.number , controller: ageController,),

              CustomElevatedButton(text: 'Retrieve All Student', bgColor: Colors.green , onPressed: (){loadAllStudents();},),
              SizedBox(height: 20,),
              CustomElevatedButton(text: 'inset Student', bgColor: Colors.yellow , onPressed: (){addStudent();},),
              SizedBox(height: 20,),
           //   CustomElevatedButton(text: 'delete All Student', bgColor: Colors.red , onPressed: (){deleteAllStudent();},),
           //   SizedBox(height: 20,),

              Expanded(
                child: ListView.builder(
                    itemCount: students.length,
                    itemBuilder: (context,index){
                      return ListTile(
                        title: Text(students[index].name),
                        subtitle: Text('${students[index].age}'),
                        trailing: GestureDetector(
                            onTap: (){
                              deleteStudent(students[index].id!);
                            },
                            child: Icon(Icons.delete)),
                      );
                    }),
              ),

            ],
          ),
        ),
      ),
    );
  }



  Future<void> loadAllStudents () async{
    students = await DatabaseHelper.instance.getAllStudents2();
    setState(() {

    });
    print('${students.length} - ${students[0].name} ');

     nameController.clear();
     ageController.clear();
  }

  Future<void>  addStudent ()async{
    final student = Student(name: nameController.text, age: int.tryParse(ageController.text.toString())?? 0 );
    print('${student.name} - ${student.age}');
    await DatabaseHelper.instance.insertStudent2(student);
    loadAllStudents();
  }

  Future<void> deleteStudent( int id) async{
    await DatabaseHelper.instance.deleteStudent(id);
    loadAllStudents();
  }

  Future<void> deleteAllStudent() async{
    await DatabaseHelper.instance.deleteAllStudent();
    loadAllStudents();
  }
}
