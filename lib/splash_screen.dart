import 'package:flutter/material.dart';
import 'package:shared_pref_example/home_screen.dart';
import 'package:shared_pref_example/login_screen.dart';
import 'package:shared_pref_example/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    gotoLogin();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.image,size: 200.0,),
      ),
    );
  }

  Future<void> gotoLogin() async {
    await Future.delayed (Duration(seconds: 3));
    Navigator.of(context).pushReplacement (
      MaterialPageRoute (
        builder: (ctx) => LoginScreen(),
      ), // MaterialPageRoute
    );
  }

  Future<void> checkUserLoggedIn () async{
    final _sharedPrefs = await SharedPreferences.getInstance();
//_sharedPrefs.setBool(SAVE_KEY_NAME, true);
    final _userLoggedIn = _sharedPrefs.getBool (SAVE_KEY_NAME);
    if(_userLoggedIn == null || _userLoggedIn== false)
    {
      gotoLogin();
    }else
    Navigator.of(context).pushReplacement (MaterialPageRoute (builder: (ctx1) => HomeScreen()));
  }
}
