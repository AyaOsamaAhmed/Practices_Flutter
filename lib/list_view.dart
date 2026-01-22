import 'package:flutter/material.dart';

import 'item_view.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      /*GridView.builder(
          gridDelegate: SilverGridDele,

          itemBuilder: (_,index){
            ItemView(count: index,);

          })
*/

      /*GridView.count(crossAxisCount: 2 ,
        children: [
        ItemView(count: 1,)
      ],)
      */
      ListView.builder(
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index){

        return ItemView(count: index,);
      })

      /*ListView(
      //  reverse: true,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Text('1' , style: TextStyle(color: Colors.yellow , fontSize: 28) ,),
            alignment: Alignment.center,
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Text('2' , style: TextStyle(color: Colors.yellow , fontSize: 28) ,),
            alignment: Alignment.center,
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Text('3' , style: TextStyle(color: Colors.yellow , fontSize: 28) ,),
            alignment: Alignment.center,
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Text('4' , style: TextStyle(color: Colors.yellow , fontSize: 28) ,),
            alignment: Alignment.center,
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Text('5' , style: TextStyle(color: Colors.yellow , fontSize: 28) ,),
            alignment: Alignment.center,
          ),
          SizedBox(height: 10,),
        ],
      ),*/
    );
  }
}
