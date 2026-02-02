import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'hive_app.dart';


void main ()async{

  WidgetsFlutterBinding.ensureInitialized();
  //await Hive.init(path);

  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HiveApp()
    );}

}
