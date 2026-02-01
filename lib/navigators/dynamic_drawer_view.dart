import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';

class DynamicDrawerView extends StatefulWidget {
  const DynamicDrawerView({super.key});

  @override
  State<DynamicDrawerView> createState() => _DynamicDrawerViewState();
}

class _DynamicDrawerViewState extends State<DynamicDrawerView> {

  PageType currentPage = PageType.home;

  Widget getPage() {
    switch (currentPage) {
      case PageType.home:
        return HomeScreen();
      case PageType.profile:
        return ProfileScreen();
      case PageType.settings:
        return SettingsScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Menu")),
            ListTile(
              title: Text("Home"),
              onTap: () {
                setState(() => currentPage = PageType.home);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Profile"),
              onTap: () {
                setState(() => currentPage = PageType.profile);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () {
                setState(() => currentPage = PageType.settings);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: getPage(),
    );
  }
}


enum PageType { home, profile, settings }

