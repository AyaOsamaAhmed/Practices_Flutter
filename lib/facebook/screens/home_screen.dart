import 'package:flutter/material.dart';

import '../../navigators/user.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =  ModalRoute.of(context)!.settings.arguments as User;

    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.blue, title: Text('Home'),
        actions: [Icon(Icons.insert_invitation)],),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

           Text('name : ${args.name}'),
          ],
        ),
      ),
    );
  }
}
