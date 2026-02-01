

import 'dart:convert';
import 'dart:io';


String fileName = 'students.json';

main() async {

  List<Map<String , dynamic>> listUser =[
    {
    'id' : 1 ,
    'name' : 'Ahmed',
    'email' : 'ahmed@gmail.com',
    'marks': [20,50,30]
  },{'id' : 2 , 'name' : 'Ahmed', 'email' : 'ahmed@gmail.com', 'marks': [20,50,30]}
  ,{'id' : 3 , 'name' : 'Ahmed', 'email' : 'ahmed@gmail.com', 'marks': [20,50,30]}
  ,{'id' : 4 , 'name' : 'Ahmed', 'email' : 'ahmed@gmail.com', 'marks': [20,50,30]}
  ,{'id' : 5 , 'name' : 'Ahmed', 'email' : 'ahmed@gmail.com', 'marks': [20,50,30]}
  ,{'id' : 6 , 'name' : 'Ahmed', 'email' : 'ahmed@gmail.com', 'marks': [20,50,30]}
  ,{'id' : 7 , 'name' : 'Ahmed', 'email' : 'ahmed@gmail.com', 'marks': [20,50,30]}
  ,{'id' : 8 , 'name' : 'Ahmed', 'email' : 'ahmed@gmail.com', 'marks': [20,50,30]}
  ,{'id' : 9 , 'name' : 'Ahmed', 'email' : 'ahmed@gmail.com', 'marks': [20,50,30]}
  ,{'id' : 10 , 'name' : 'Ahmed', 'email' : 'ahmed@gmail.com', 'marks': [20,50,30]}
  ];


  // Convert the students list from  Dart Object To JSON

  String listUsersJson = jsonEncode(listUser);

  //Convert the students list from: JSON To Dart Object

  List <dynamic> data = jsonDecode(listUsersJson);



  // Write the students JSON data into the file.
  writeJson(listUsersJson);

  //Read the data from the file.
  String getStudents =  await readJson();

  //Convert the read JSON data back into Dart object.
  List<dynamic> students = jsonDecode(getStudents);


  print(students);


}


Future<String> readJson () async{
  final file = File(fileName);
  if( await file.exists()){
    return await file.readAsString();

  }else{
    return 'Error';
  }
}

Future<void> writeJson (String json) async {
  final file = File(fileName);
  await file.writeAsString(json);
  print('json Added');
}