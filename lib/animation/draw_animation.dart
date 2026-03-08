import 'package:flutter/material.dart';

class DrawAnimation extends StatefulWidget {
  const DrawAnimation({super.key});

  @override
  State<DrawAnimation> createState() => _DrawAnimationState();
}

class _DrawAnimationState extends State<DrawAnimation> {

  bool clicked = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
        onTap: ()=> setState(() {
          clicked = !clicked ;
        }),
              child: AnimatedContainer(
                height: clicked ? 50 : 100,
                width: clicked ? 50 : 100,
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 2000),
          decoration: BoxDecoration(
            color: clicked ? Colors.blue : Colors.red,
            borderRadius: BorderRadius.circular(clicked ? 50 : 100),
          ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
