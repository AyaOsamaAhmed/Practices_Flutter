import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {


  Future<void> saveData () async{
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('name', 'Aya');
    await prefs.setInt('age', 22);
    await prefs.setBool('isLogin', true);
  }

  Future<void> readData() async {
    final prefs = await SharedPreferences.getInstance();

    String? name = prefs.getString('name');
    int? age = prefs.getInt('age');
    bool? isLogin = prefs.getBool('isLogin');

    print(name);
    print(age);
    print(isLogin);
  }



}