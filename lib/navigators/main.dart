import 'package:flutter/material.dart';
import 'package:untitled/navigators/drawer_view.dart';
import 'package:untitled/navigators/nav_home_screen.dart';


void main (){
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerView()//NavHomeScreen(),
    );}

}
