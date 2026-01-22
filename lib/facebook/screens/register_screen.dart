import 'package:flutter/material.dart';
import 'package:untitled/facebook/utils/navigator_helper.dart';
import 'package:untitled/facebook/widget/custom_elevated_button.dart';
import 'package:untitled/facebook/widget/custom_logo.dart';
import 'package:untitled/facebook/widget/custom_text_field.dart';

import '../widget/custom_divider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomLogo(),
                CustomTextField(hintText: 'Enter Mobile Or Email Address', keyboardType: TextInputType.numberWithOptions()),
                CustomTextField(hintText: 'Enter Password', keyboardType: TextInputType.numberWithOptions(),isObsecure: true,),
                CustomTextField(hintText: 'Re-Enter Password', keyboardType: TextInputType.numberWithOptions(),isObsecure: true,),
                CustomElevatedButton(text: 'Sign Up', bgColor: Colors.blue , onPressed: (){NavigatorHelper.route(context: context, routeName: 'home');}),
                CustomDivider(),
                CustomElevatedButton(text: 'Already Has A Account', bgColor: Colors.green , onPressed: (){
                  Navigator.pop(context);
                },),
          
              ],
            ),
          ),
        ),
    );
  }
}
