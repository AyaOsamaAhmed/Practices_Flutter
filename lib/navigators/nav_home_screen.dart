import 'package:flutter/material.dart';
import 'package:untitled/navigators/search_screen.dart';
import 'package:untitled/navigators/settings_screen.dart';

import 'home_screen.dart';


class NavHomeScreen extends StatefulWidget {
  const NavHomeScreen({super.key});

  @override
  State<NavHomeScreen> createState() => _NavHomeScreenState();
}

class _NavHomeScreenState extends State<NavHomeScreen> {
  int currentIndex = 0 ;

  final List<Widget> screens = [
    Center(child: Text('Home Screen'),),
    Center(child: Text('Search Screen'),),
    Center(child: Text('Settings Screen'),),
  ];

  final List<Widget> screens2 = [
    HomeScreen(),
    SearchScreen(),
    SettingsScreen()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens2[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
         /* Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex){
           return Screens2[index];
          }));*/
          setState(() {
            currentIndex = index ;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home) , label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search) , label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.settings) , label: 'Settings'),
       //   BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle) , label: 'Profile'),
        ],
      ),
    );
  }
}
