import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/home_screen.dart';
import 'package:untitled/navigators/app_routes.dart';
import 'package:untitled/navigators/profile_screen.dart';
import 'package:untitled/navigators/settings_screen.dart';

class RoutesGo {

  static GoRouter mainAppRoute = GoRouter(
    initialLocation: AppRoutes.home,
    errorBuilder: (context , state)=>Scaffold(
      body: Center(child: Text('No routes'),),
    ),
    routes: [
      GoRoute(
         name: AppRoutes.home,
          path: AppRoutes.home,
        builder: (context , state) =>HomeScreen()
      ),GoRoute(
         name: AppRoutes.profile,
          path: AppRoutes.profile,
        builder: (context , state) =>ProfileScreen()
      ),GoRoute(
         name: AppRoutes.setting,
          path: AppRoutes.setting,
        builder: (context , state) =>SettingsScreen()
      )
    ]

  );
}