import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/database/data_provider.dart';
import 'package:untitled/database/database_helper.dart';
import 'package:untitled/database/student.dart';
import 'package:untitled/facebook/widget/custom_elevated_button.dart';
import 'package:untitled/facebook/widget/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  final nameController = TextEditingController();
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DataProvider>(context);
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

              CustomElevatedButton(text: 'Retrieve All Student', bgColor: Colors.green , onPressed: ()async{
                provider.loadAllStudents();},),
              SizedBox(height: 20,),
              CustomElevatedButton(text: 'inset Student', bgColor: Colors.yellow , onPressed: ()async{
                final student = Student(name: nameController.text.toString(), age: int.parse(ageController.text ));
                provider.addStudent(student);},),
              SizedBox(height: 20,),
           //   CustomElevatedButton(text: 'delete All Student', bgColor: Colors.red , onPressed: (){deleteAllStudent();},),
           //   SizedBox(height: 20,),

              provider.isLoading ? CircularProgressIndicator() :   // show progress if  is loading is true

              Expanded(
                child: ListView.builder(
                    itemCount: provider.listStudent.length,
                    itemBuilder: (context,index){
                      return ListTile(
                        title: Text(provider.listStudent[index].name),
                        subtitle: Text('${provider.listStudent[index].age}'),
                        trailing: GestureDetector(
                            onTap: (){
                              provider.deleteStudent(provider.listStudent[index].id!);
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



}
