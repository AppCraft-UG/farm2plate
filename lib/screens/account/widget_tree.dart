import 'package:flutter/material.dart';
import 'package:grocery_app/controllers/firebase_users.dart';
import 'package:grocery_app/screens/account/login_register.dart';
import 'package:grocery_app/screens/dashboard/dashboard_screen.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder:(context, snapshot) {
        if(snapshot.hasData){
          return DashboardScreen();
        }else {
          return LoginPage();
        }
      },
    );
  }
}