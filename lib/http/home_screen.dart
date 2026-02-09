import 'package:flutter/material.dart';
import 'package:untitled/facebook/widget/custom_elevated_button.dart';

import 'http_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> names = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                CustomElevatedButton(text: 'Get Data', bgColor: Colors.green , onPressed: ()async{
                names= await HttpHelper.fetchPosts();
        
                 setState(() {
        
                 });
                },),
                Expanded(child: ListView.builder(
                    itemCount: names.length,
                    itemBuilder: (context,index){
                    final name = names[index];
                  return ListTile(
                    leading: Icon(Icons.supervised_user_circle),
                    title: Text(name),
                  );
                }))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
