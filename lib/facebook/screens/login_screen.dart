import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/facebook/screens/forget_password_screen.dart';
import 'package:untitled/facebook/screens/register_screen.dart';
import 'package:untitled/facebook/widget/custom_logo.dart';

import '../utils/navigator_helper.dart';
import '../widget/custom_divider.dart';
import '../widget/custom_elevated_button.dart';
import '../widget/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
   LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final args = M

    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomLogo(),
            CustomTextField(controller:emailController,hintText: 'Mobile ', keyboardType: TextInputType.emailAddress, ),
            CustomTextField(hintText: 'Password ', keyboardType: TextInputType.numberWithOptions(),isObsecure: true, ),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: CustomElevatedButton(onPressed: (){
                String text = emailController.text;
                debugPrint(text);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
              }, text: 'Log In', bgColor: Colors.blue,)
              ),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (contex){
                return ForgetPasswordScreen();
              }));
                }, child: Text('forget password ?' , style: TextStyle(color: Colors.blue , fontSize: 25 ),)),
            CustomDivider(),
             Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: CustomElevatedButton(text: 'Create New Account', bgColor: Colors.green , onPressed: (){
                NavigatorHelper.goTo(context: context, newScreen: RegisterScreen());
              },),
            )

          ],
        ),
      ),
    );
  }
}
