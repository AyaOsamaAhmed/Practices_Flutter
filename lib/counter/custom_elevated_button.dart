import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomElevated extends StatelessWidget {
  final void Function()? onPressed;
  final String text ;
  const CustomElevated({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(text , style: TextStyle(color: Colors.white),)
    ,style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),

    );
  }
}
