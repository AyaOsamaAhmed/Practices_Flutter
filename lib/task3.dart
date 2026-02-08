import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: SafeArea(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Image.asset('assets/images/profile.png',
                              width: 100,
                              height: 100,),
                            )
                          ]
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.supervised_user_circle, color: Colors.white),
                                Text('Name: Aya Osama Ahmed'),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.add_road, color: Colors.white),
                                Text('Address: Giza'),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.title, color: Colors.white),
                                Text('Title : Android Developer'),
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                  // front
                  SizedBox(width: 10, height: 100,),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset('assets/images/profile.png',
                          width: 100,
                          height: 100,),
                      ),
                    ),
                  )//back
                ],
              ),
            ),
          ),
        ),
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

