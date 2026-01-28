import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/facebook/screens/home_screen.dart';
import 'package:untitled/navigators/profile_screen.dart';
import 'package:untitled/navigators/settings_screen.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer'),),
      drawer: Drawer(
        child:Column(
          children: [
          /*  DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Welcome')
            ),*/

            Container(
              width: double.infinity,
              height: 150,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome'),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),

                  Text('Aya Osama Ahmed'),
                ],
              ),
            ),
            ListTile(leading: Icon(Icons.home),
            title: Text('Home'),
            trailing: Icon(CupertinoIcons.arrow_clockwise),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return HomeScreen();
                }));
              },
            ),
            ListTile(leading: Icon(Icons.supervised_user_circle),
            title: Text('Profile'),
            trailing: Icon(CupertinoIcons.arrow_clockwise),
              onTap: (){   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return ProfileScreen();
              }));
              },
            ),
            ListTile(leading: Icon(Icons.settings),
            title: Text('Setting'),
            trailing: Icon(CupertinoIcons.arrow_clockwise),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return SettingsScreen();
                }));

              },
            ),
          ],
        )
      ),
    );
  }
}
