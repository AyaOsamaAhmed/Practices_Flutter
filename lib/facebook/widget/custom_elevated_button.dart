import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text ;
  final Color bgColor ;
  const CustomElevatedButton({super.key, required this.text, this.onPressed, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(text , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 20),)
      ,style: ElevatedButton.styleFrom(backgroundColor: bgColor ,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),

      ),
    );
  }
}
