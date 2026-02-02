import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {


  void initHive() async{

    var box = await Hive.openBox('myBox');
    box.put('name', 'aya');
    box.put('age', 30);

    var name = box.get('name ', defaultValue: 'noName');
    box.delete('age');

    box.clear;

    bool check = box.containsKey('name');

    box.add('hello');
    box.add('world');

    String word = box.getAt(0);  // for box by add

    box.put('skills', ['flutter' , 'android']);


  }
}