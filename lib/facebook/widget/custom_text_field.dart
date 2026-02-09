import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{
  final bool isObsecure;
  final String hintText ;
  final int? maxLines ;
  final TextInputType? keyboardType ;
  final TextEditingController? controller;
  final String? Function(String?)? validator ;
  final void Function(String?)? onSaved;

  CustomTextField({
    this.isObsecure = false,
    required this.hintText,
    this.validator,
   this.onSaved
    ,required this.keyboardType, this.controller , this.maxLines , });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: isObsecure,
          minLines: 1,
          maxLines: maxLines,
          enabled: true,
          readOnly: false,
          decoration: InputDecoration(
            //  hintText: hintText,
          //  hintStyle: TextStyle(color: Colors.green),
          //  filled: true,
              labelText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
          ),
          validator: validator,
          onSaved: onSaved,
        //  onChanged: (){},
        //  onFieldSubmitted: (){},
        ),
        SizedBox(height: 20),
      ],
    );
  }

}
