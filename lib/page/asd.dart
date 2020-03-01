import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Asd extends StatefulWidget {
  @override
  _AsdState createState() => _AsdState();
}

class _AsdState extends State<Asd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Container(
        color: Colors.red,
        width: ScreenUtil().setWidth(100),
        height: ScreenUtil().setHeight(100),
      ),
    );
  }
}