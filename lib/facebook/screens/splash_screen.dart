import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/facebook/screens/login_screen.dart';
import 'package:untitled/facebook/utils/navigator_helper.dart';
import 'package:untitled/facebook/widget/custom_logo.dart';
import 'package:untitled/sharedPrefrences/shared_preference_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
      Timer(const Duration(seconds: 3), () {
        NavigatorHelper.goTo(context: context, newScreen: LoginScreen());
      });

  }

  Future<bool> getLogin()async{
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLogin') ?? false ;
  }
  @override
  Widget build(BuildContext context) {
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
