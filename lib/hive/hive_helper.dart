import 'dart:async';

import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {

  static const String boxName = "userBox";
  static const String name = "name";
  static const String phoneNumber = "phone";



  static Future<void>  init(String boxName )async{
    await Hive.openBox(boxName);

  }


   static Future<void> saveData(String boxName ,String key , dynamic value)async{

     var box = await Hive.openBox(boxName);
     box.put(key, value);
    }


  static Future<dynamic> getData(String boxName ,String key , {dynamic defaultValue})async{

       var box = await Hive.openBox(boxName);
      return box.get(key , defaultValue: defaultValue);
  }

  static Future<void> deleteData(String boxName ,String key )async{

       var box = await Hive.openBox(boxName);
       box.delete(key);
  }

  static Future<void> deleteDataInBox(String boxName ,String key )async{

       var box = await Hive.openBox(boxName);
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