import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/facebook/screens/login_screen.dart';
import 'package:untitled/facebook/utils/navigator_helper.dart';
import 'package:untitled/facebook/widget/custom_logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),(){
      NavigatorHelper.goTo(context: context, newScreen: LoginScreen());
    });

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: CustomLogo()),

        ],
      ),
    );
  }
}
