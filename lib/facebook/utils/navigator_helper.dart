import 'package:flutter/material.dart';

abstract class NavigatorHelper {

  static  goTo({required BuildContext context , required Widget newScreen}){

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex) => newScreen));
  }

  void anyThing({required BuildContext context , required Widget newScreen}) {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (contex) => newScreen)
        , (route)=>false);   // use for remove all screens until this screen
  }

  static route({required BuildContext context , required String routeName}){
    Navigator.pushNamed(context, routeName);
  }
}