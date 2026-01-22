import 'package:flutter/material.dart';

abstract class ApplicationThemeData {
  static ThemeData lightTheme(){
    return ThemeData(

        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green)
        )
    );
  }

  static ThemeData darkTheme(){
    return ThemeData(

    );
  }

}
