import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'constant.dart';
import 'details_note_screen.dart';
import 'hive_helper.dart';
import 'note_model.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});


  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {

   Box<NoteModel> notesBox = Hive.box<NoteModel>(Constant.notesBox);
  final nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    notesBox = Hive.box<NoteModel>(Constant.notesBox);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Notes'),
      centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()async{
         await Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsNoteScreen()));
          setState(() {

          });
      } ,
        child: Icon(Icons.add),
      ),
      body: notesBox.length == 0 || notesBox.isEmpty ?Center(
        child:Text('No Notes Yet'),
      ):ListView.builder(
          itemCount: notesBox.length,
          itemBuilder: (context , index){
          final note = notesBox.getAt(index)!;
          return ListTile(
            leading: Icon(Icons.notes) ,
            title: Text(note.title),
            subtitle: Text(note.content),
            trailing: IconButton(onPressed: (){
              notesBox.deleteAt(index);
              setState(() {

              });
            }, icon: Icon(Icons.delete , color: Colors.red,)),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
              DetailsNoteScreen(index : index ,note: NoteModel( title: note.title, content: note.content))));
              setState(() {});
              },

          );

      })
      );

  }
}
