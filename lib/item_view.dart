import 'package:flutter/material.dart';

class ItemView extends StatelessWidget {
  final int count ;
  const ItemView({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.blue,
          child: Text('$count' , style: TextStyle(color: Colors.yellow , fontSize: 28) ,),
          alignment: Alignment.center,
        ),
        SizedBox(height: 10,),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Aya Osama'),
          subtitle: Text('+02012344'),
          trailing: Icon(Icons.call),
        )
      ],
    );
  }
}
