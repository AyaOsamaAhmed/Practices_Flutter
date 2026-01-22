import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.blue, title: Text('Home'), actions: [Icon(Icons.insert_invitation)],),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
