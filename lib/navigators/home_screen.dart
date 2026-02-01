import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        automaticallyImplyActions: false,
        leading: Row(
          children: [
            GestureDetector(onTap:(){
              Navigator.pop(context);
            },
                child: Icon(Icons.backup))
          ],
        ),
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
