// import 'package:final_project/Screens/Dashboard/dashboard_screen.dart';
import 'package:final_project/Screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:final_project/constans.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portal Akademik',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      // home: DashboardScreen(),
      home: LoginScreen(),
    );
  }
}
