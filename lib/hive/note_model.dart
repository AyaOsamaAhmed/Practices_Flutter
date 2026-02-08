import 'package:hive/hive.dart';


part 'note_model.g.dart';


@HiveType(typeId: 0) // number special for each model
class NoteModel {
  @HiveField(0)   // number special for each item
  String title;

  @HiveField(1)
  String content;

  NoteModel({required this.title , required this.content});
}