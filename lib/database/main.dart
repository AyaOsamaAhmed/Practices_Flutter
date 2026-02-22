import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/database/data_provider.dart';
import '../database/home_screen.dart';

void main (){
  runApp(
      ChangeNotifierProvider(create: (_) => DataProvider()..loadAllStudents(),//cascade operator
      child: Application(),
      )
       );
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen()
    );}

}
