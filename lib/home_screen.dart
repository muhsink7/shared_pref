import 'package:flutter/material.dart';
import 'package:shared_pref_example/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({ Key? key }): super (key: key);
  @override
  Widget build (BuildContext context) {
     return Scaffold (
       appBar: AppBar(
         title: Text('Home'),
         actions: [
           IconButton(onPressed: (){
             signout(context);
           }, icon: Icon(Icons.logout))
         ],
       ),
       body: Text('Home'), );
  }
  void signout (BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute (builder: (ctx1) => LoginScreen()), (route) => false);
  }
}