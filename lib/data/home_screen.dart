import 'package:flutter/material.dart';
import 'package:untitled/data/read_write_file.dart';
import 'package:untitled/facebook/widget/custom_elevated_button.dart';
import '../facebook/widget/custom_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String content = '';
  final controllerData = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            CustomTextField(hintText: 'data', keyboardType: TextInputType.name,controller: controllerData,),
            CustomElevatedButton(text: 'Read File ', bgColor: Colors.red , onPressed: () async {

              content = await readFile();
              print(content);
              setState(() {

              });
            },),
            SizedBox(height: 20,),
            CustomElevatedButton(text: 'Write File', bgColor: Colors.green , onPressed: (){
              writeFile(controllerData.text);
            },),
              Text(content , style: TextStyle(color: Colors.blue , fontSize: 20),),

          ],
        ),
      ),
    );
  }
}
