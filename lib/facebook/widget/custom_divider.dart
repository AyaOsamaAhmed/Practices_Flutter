import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded( child: Divider(thickness: 1, color: Colors.grey,)),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('OR'),
        ),
        Expanded(child: Divider(thickness: 1, color: Colors.grey))
      ],
    );
  }
}
