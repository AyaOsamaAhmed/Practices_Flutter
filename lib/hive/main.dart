import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:untitled/hive/hive_helper.dart';
import 'package:untitled/hive/note_model.dart';

import 'hive_app.dart';
import 'note_screen.dart';


 const String _boxNote = "notesBox";

void main ()async{

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  //HiveHelper.init();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(_boxNote);
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NoteScreen()//HiveApp()
    );}

}
