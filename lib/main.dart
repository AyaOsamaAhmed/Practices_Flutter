import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/stack.dart';

import 'card.dart';
import 'list_view.dart';

void main (){
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewExample(),
    );}

}
