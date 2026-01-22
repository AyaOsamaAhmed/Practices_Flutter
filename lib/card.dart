import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(

          elevation: 20,
          color: Colors.blue,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(30)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
              height: 300,
              child: Column(
                children: [
                  Text('item'),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/img.jpg' ,width: 200 , height: 200, fit: BoxFit.fill,))
                ],
              ),
            ),
            
          ),
        ),
      ),
    );
  }
}
