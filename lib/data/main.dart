import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/home_screen.dart';
import 'package:untitled/facebook/utils/routes.dart';
import 'package:untitled/facebook/utils/theme_data.dart';

void main (){
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );}
}
