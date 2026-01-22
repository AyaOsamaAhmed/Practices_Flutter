import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children:[
            CircleAvatar(
              radius: 100,
            backgroundImage: AssetImage('assets/images/profile.png'),
        ),
            Positioned(
            top: 10,
            left: 10,
            child: Icon(
              Icons.star,
              color: Colors.yellow,
              size: 40,
            ),
            )
          ]
        ),
      ),
    );
  }
}
