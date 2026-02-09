import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:untitled/facebook/widget/custom_elevated_button.dart';
import 'package:untitled/facebook/widget/custom_text_field.dart';
import 'package:untitled/hive/note_model.dart';

import 'constant.dart';

class DetailsNoteScreen extends StatefulWidget {

  final NoteModel? note ;
  final int? index ;

  const DetailsNoteScreen({super.key, this.note, this.index});

  @override
  State<DetailsNoteScreen> createState() => _DetailsNoteScreenState();
}

class _DetailsNoteScreenState extends State<DetailsNoteScreen> {

  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final Box<NoteModel> notesBox = Hive.box(Constant.notesBox);

  @override
  void initState() {
    super.initState();
    if(widget.note != null){
      titleController.text = widget.note!.title;
      contentController.text = widget.note!.content;
    }
  }

  void saveNote(){
    //Add New Note

    if(widget.note == null){
      notesBox.add(NoteModel(title: titleController.text, content: contentController.text));
    }else{
      // edit note
      notesBox.putAt(widget.index!, NoteModel(title: titleController.text, content: contentController.text));
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.note == null ? 'Add Note' : 'Edit Note'),),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CustomTextField(hintText: 'Title Note', keyboardType: TextInputType.text , controller: titleController,),
              SizedBox(height: 20,),
              CustomTextField(hintText: 'Content Note', keyboardType: TextInputType.text ,maxLines: 6, controller: contentController,),
              SizedBox(height: 20,),
              CustomElevatedButton(text: 'Save', bgColor: Colors.green , onPressed: (){
                saveNote();
              },)
            ],
          ),
        ),
      ),
    );
  }
}
