import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'facebook/widget/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String? email ;
  String? password ;
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: _formKey,
                  child: Column(
                    children: [
                      CustomTextField(hintText: 'Email',keyboardType: TextInputType.emailAddress, onSaved: (value){email = value;},
                          validator:
                      (text){
                    if(text == null || text.isEmpty){
                      return 'Email is required ';
                    }else{
                      return null ;
                    }}
                    ),

                      SizedBox(height: 10,),
                      TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder()
                      ),
                        validator: (text){
                        if(text == null || text.isEmpty){
                          return 'Email is required ';
                        }else{
                          return null ;
                        }
                        },
                      ) ,
                      SizedBox(height: 10,),
                      TextFormField(
                        onSaved: (value){
                          password = value;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder()
                        ),
                        validator: (value){
                          if(value!.length < 6){
                            return 'Password must be at least 6 char';
                          }else{
                            return null ;
                          }
                        },
                      ),
                      ElevatedButton(onPressed: (){
                        if(_formKey.currentState!.validate()){
                          _formKey.currentState!.save();
                          debugPrint('Form is Valid');
                          debugPrint(email);
                          debugPrint(password);
                        }
                      }, child: Text('Login')),
                      ElevatedButton(onPressed: (){
                        _formKey.currentState!.reset();
                      }, child: Text('Reset'))
                    ],
                  )
              ),
            )
        )
    );
  }
}