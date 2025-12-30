import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(

              body: SafeArea(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                    height: double.infinity,
                                    decoration: BoxDecoration(color: Colors.red),
                                    child: Center(child: Text('1')))
                            ),
                            Expanded(
                                flex: 1,
                                child: Container(
                                    height: double.infinity,
                                    decoration: BoxDecoration(color: Colors.green),
                                    child: Center(child: Text('2')))),
                            Expanded(
                                flex: 1 ,
                                child: Container(
                                    height: double.infinity,
                                    decoration: BoxDecoration(color: Colors.blue),
                                    child: Center(child: Text('3')))),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Expanded(
                                flex:1,
                                child: Container(
                                    height: double.infinity,
                                    decoration: BoxDecoration(color: Colors.red),
                                    child: Center(child: Text('1')))),
                            Expanded(
                                flex: 1,
                                child: Container(
                                    height: double.infinity,
                                    decoration: BoxDecoration(color: Colors.green),
                                    child: Center(child: Text('2')))),
                            Expanded(
                                flex: 1,
                                child: Container(
                                    height: double.infinity,
                                    decoration: BoxDecoration(color: Colors.blue),
                                    child: Center(child: Text('3')))),

                          ],
                        ),
                      )
                    ],
                  )
              )
          )
      )
  );
}