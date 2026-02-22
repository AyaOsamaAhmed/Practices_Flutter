import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0 ;
  String _team = '';
  int get count => _count;
  String get team => _team;


  void increment (){
    _count ++;
    notifyListeners();
  }

  void decrement(){
    _count --;
    notifyListeners();
  }

  void changeTeam(){
    _team = 'Alahly';
    notifyListeners();
  }
}