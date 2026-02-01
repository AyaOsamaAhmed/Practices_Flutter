import 'package:flutter/material.dart';
import 'package:untitled/facebook/widget/custom_elevated_button.dart';
import 'package:untitled/facebook/widget/custom_logo.dart';
import 'package:untitled/facebook/widget/custom_text_field.dart';

import '../utils/navigator_helper.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomLogo(),
            CustomTextField(hintText: 'Enter Mobile Or Email Address', keyboardType: TextInputType.emailAddress),
            CustomElevatedButton(text: 'Send Reset Email', bgColor: Colors.blue, onPressed: (){
           //   NavigatorHelper.route(context: context, routeName: 'login');
              Navigator.pushNamed(context, 'login' , arguments: 'email');
            },)

          ],
        ),
      ),
    );
  }
}
