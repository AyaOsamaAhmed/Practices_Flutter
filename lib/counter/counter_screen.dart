import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/counter/teams.dart';

import 'custom_elevated_button.dart';
import 'header.dart';


class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _ChangeStateState();
}


class _ChangeStateState extends State<CounterScreen> {
  int teamAPoints = 0 ;
  int teamBPoints = 0 ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text('Counter App' , style: TextStyle(color: Colors.white),),
      ),
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Header(team: Teams.teamA.name, score: teamAPoints,),
                    CustomElevated(onPressed: ()=>setScore(team: Teams.teamA , points: 1), text: "Add 1 point"),
                    CustomElevated(onPressed: ()=>setScore(team: Teams.teamA , points: 2), text: "Add 2 point"),
                    CustomElevated(onPressed: ()=>setScore(team: Teams.teamA , points: 3), text: "Add 3 point"),


                  ],
                ),
                SizedBox(height: 300, child: VerticalDivider()),
                Column(
                  children: [
                    Header(team: Teams.teamB.name, score: teamBPoints,),
                    CustomElevated(onPressed: ()=>setScore(team: Teams.teamB , points: 1), text: "Add 1 point"),
                    CustomElevated(onPressed: ()=>setScore(team: Teams.teamB , points: 2), text: "Add 2 point"),
                    CustomElevated(onPressed: ()=>setScore(team: Teams.teamB , points: 3), text: "Add 3 point"),
                  ],
                ),

              ],
            ),
          CustomElevated(onPressed: ()=>setScore(team: Teams.Reset), text: "Reset"),
          ],
        ),
      ),
    );
  }


  void setScore({ required Teams team , int points = 0 }) {
    setState(() {
      switch (team) {
        case Teams.teamA:
          teamAPoints += points;
        case Teams.teamB:
          teamBPoints += points;
        case Teams.Reset:
          teamAPoints = teamBPoints = 0;
      }
    });
  }
}

