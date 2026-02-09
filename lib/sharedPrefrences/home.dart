import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/facebook/widget/custom_text_field.dart';

import '../facebook/widget/custom_elevated_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final data = TextEditingController();
   String showData = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(hintText: 'Data', keyboardType: TextInputType.name , controller:data ,),

        CustomElevatedButton(text: 'Retrive', bgColor: Colors.green , onPressed: () async {
              showData = await readData();

              setState(() {

              });
          }),

            SizedBox(height: 20),
          CustomElevatedButton(text: 'Save', bgColor: Colors.green , onPressed: (){
            saveData(data.text);
            print(data.text);
        }),
            SizedBox(height: 20),
            CustomElevatedButton(text: 'Reset', bgColor: Colors.green , onPressed: (){
              showData = '';
              data.clear();
              setState(() {
              });
        }),
            Text(showData),

          ],
        ),
      ),
    );
  }



  Future<void> saveData (String data ) async {
    final prefs = await SharedPreferences.getInstance();


    await prefs.setString('name', data);
  }


  Future<String> readData() async {
    final prefs = await SharedPreferences.getInstance();

    return  prefs.getString('name')?? '';
  }
}
