import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final int score ;
  final String team ;
  const Header({super.key, required this.score, required this.team});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40,),
        Text(team , style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold),),
        Text("$score" , style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold),),

      ],
    );
  }
}
