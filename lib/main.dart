import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tokpay/page/HomePage.dart';
import 'package:tokpay/page/LoginPage/SignIn.dart';
import 'package:tokpay/page/Myself/myself.dart';



void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    // 设置android状态栏为透明
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
   SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
} 


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder> {
          'myself': (BuildContext context) => Myself(),
          'signIn':(BuildContext context) => SignIn(),
        },
      title: "asdasd",
      theme: ThemeData(
        primaryColor: Color.fromRGBO(255, 255, 255, 1),
      ),
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  {
  Widget _Home(){
    
    return HomePage();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(statusBarBrightness: Brightness.dark));
    return Scaffold(
      body:  _Home(),
    
    );
    
  }}

