import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/counter_provider.dart';

import '../provider/home_screen.dart';



void main (){

  runApp(
      ChangeNotifierProvider(create:(_) => CounterProvider(),
      child: Application(),
      ),
    );
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
       /* builder: (context,child) {
          return ChangeNotifierProvider(create:(_) => CounterProvider(),
              child:child!,);
        },*/
        home: HomeScreen()
        /*
        home:  ChangeNotifierProvider(create:(_) => CounterProvider(),
      child: HomeScreen(),
      ),
         */
    );}

}
