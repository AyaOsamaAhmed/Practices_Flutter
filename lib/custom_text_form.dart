import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget{
  final bool isObsecure;
  final String lableText ;
  final String? Function(String?)? validator ;
  final void Function(String?)? onSaved;

   CustomTextForm({
    this.isObsecure = false,
    required this.lableText ,
    this.validator,
   this.onSaved});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObsecure,
      decoration: InputDecoration(
          labelText: lableText,
          border: OutlineInputBorder()
      ),
      validator: validator,
      onSaved: onSaved,
    );
  }

}
