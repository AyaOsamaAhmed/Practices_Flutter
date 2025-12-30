import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(title: Text("first task"),),
              body: SafeArea(
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("1"),
                            Text("2"),
                            Text("3"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("4"),
                            Text("5"),
                            Text("6"),
                          ],
                        ),
                    Row(
                    children: [
                    Text("7"),
                    Text("8"),
                    Text("9"),
                  ],
          )
                      ],
                    ),
                  )
              )
          )
      )
  );
}