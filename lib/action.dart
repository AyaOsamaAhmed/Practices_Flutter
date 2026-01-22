import 'package:flutter/material.dart';

class Action extends StatelessWidget {
  const Action({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(

        onTap: (){},
        
        onHorizontalDragUpdate: (details){},
        onVerticalDragUpdate: (details){

        },

        child: Container(),
      )


      /*InkWell(
        onDoubleTap: (){},
        onLongPress: (){},
        onTap: (){},
        child: Container(
          width: 100,
            height: 100,
            color: Colors.blue,
        ),
      ),*/
    );
  }
}
