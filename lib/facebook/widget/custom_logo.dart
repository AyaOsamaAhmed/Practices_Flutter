
import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.facebook,
          color: Colors.blue,
          size: 150
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
