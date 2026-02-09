import 'package:flutter/material.dart';
import 'package:untitled/facebook/widget/custom_elevated_button.dart';
import 'package:untitled/facebook/widget/custom_text_field.dart';
import 'package:untitled/hive/hive_helper.dart';

class HiveApp extends StatefulWidget {
  const HiveApp({super.key});

  @override
  State<HiveApp> createState() => _HiveAppState();
}

class _HiveAppState extends State<HiveApp> {

  final controllerName = TextEditingController();
  final controllerPhoneNumber = TextEditingController();
  String? name = 'None' ;
  String? phoneNumber = 'None' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(hintText: 'Enter Data ', keyboardType: TextInputType.name , controller: controllerName,),
              CustomTextField(hintText: 'Enter phone number ', keyboardType: TextInputType.number , controller: controllerPhoneNumber,),
              CustomElevatedButton(text: 'Save', bgColor: Colors.green , onPressed: (){
                HiveHelper.saveData(HiveHelper.boxName,HiveHelper.name , controllerName.text);
                HiveHelper.saveData(HiveHelper.boxName,HiveHelper.phoneNumber , controllerPhoneNumber.text);
              },),
              SizedBox(height: 20,),
              CustomElevatedButton(text: 'Retrive', bgColor: Colors.blue , onPressed: () async {
                name = await HiveHelper.getData(HiveHelper.boxName,HiveHelper.name);
                phoneNumber = await HiveHelper.getData(HiveHelper.boxName,HiveHelper.phoneNumber);

                setState(() {

                });

              },),
              SizedBox(height: 20,),
              CustomElevatedButton(text: 'Clear Data', bgColor: Colors.red , onPressed: () async {
                  HiveHelper.deleteData(HiveHelper.boxName,HiveHelper.name);
                  HiveHelper.deleteData(HiveHelper.boxName,HiveHelper.phoneNumber);


                  name = await HiveHelper.getData(HiveHelper.boxName,HiveHelper.name);
                  phoneNumber = await HiveHelper.getData(HiveHelper.boxName,HiveHelper.phoneNumber);

                  setState(() {

                  });

              },),

              SizedBox(height: 40,),
              Text('Name : ${name??'None'}'),
              Text('PhoneNumber : ${phoneNumber??'None'}'),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controllerName.dispose();
    controllerPhoneNumber.dispose();
    super.dispose();

  }
}
