import 'dart:async';

import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {

  static const String _boxName = "userBox";
  static const String name = "name";
  static const String phoneNumber = "phone";



  static Future<void>  init()async{
    await Hive.openBox(_boxName);

  }


   static Future<void> saveData(String key , dynamic value)async{

     var box = await Hive.openBox(_boxName);
     box.put(key, value);
    }


  static Future<dynamic> getData(String key , {dynamic defaultValue})async{

       var box = await Hive.openBox(_boxName);
      return box.get(key , defaultValue: defaultValue);
  }

  static Future<void> deleteData(String key )async{

       var box = await Hive.openBox(_boxName);
       box.delete(key);
  }

  static Future<void> deleteDataInBox(String key )async{

       var box = await Hive.openBox(_boxName);
       box.clear();
  }

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