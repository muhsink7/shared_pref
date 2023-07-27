import 'package:flutter/material.dart';
import 'package:shared_pref_example/login_screen.dart';
import 'package:shared_pref_example/splash_screen.dart';

const SAVE_KEY_NAME = 'UserLoggedIn';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), // ThemeData
      home: SplashScreen(),
    ); // MaterialApp
  }
}
