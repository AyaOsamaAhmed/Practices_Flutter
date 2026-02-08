import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'hive_helper.dart';
import 'note_model.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});


  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {

  final Box<NoteModel> notesBox = Hive.box<NoteModel>("notesBox");
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Notes'),
      centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){

      } ,
        child: Icon(Icons.add),
      ),
      body: notesBox.isEmpty?Center(
        child:Text('No Notes Yet'),
      ):ListView.builder(
          itemCount: notesBox.length,
          itemBuilder: (context , index){
          final note = notesBox.get(index);
          print(note);
          return ListTile(
            leading: Icon(Icons.notes) ,
            title: Text(note!.title),
            subtitle: Text(note.content),
            trailing: IconButton(onPressed: (){
              notesBox.deleteAt(index);
            }, icon: Icon(Icons.delete , color: Colors.red,)),
          );
      })
      );

  }
}
