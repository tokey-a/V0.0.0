import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeLoginPassword extends StatefulWidget {
  @override
  _ChangeLoginPasswordState createState() => _ChangeLoginPasswordState();
}

class _ChangeLoginPasswordState extends State<ChangeLoginPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: IconButton(
          icon: Image.asset(
            "Images/Currency/ZuoJianTou/Rectangle.png",
            width: ScreenUtil().setWidth(38),
            height: ScreenUtil().setHeight(38),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 1,
        title: Text(
          "修改登录密码",
          style: TextStyle(
            color: Color.fromRGBO(92, 92, 92, 1),
            fontSize: ScreenUtil().setSp(32),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(36),
                right: ScreenUtil().setWidth(36)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(58),bottom: ScreenUtil().setHeight(10)),
                  child: Text(
                    "原密码",
                    style: TextStyle(
                        color: Color.fromRGBO(114, 115, 125, 1),
                        fontSize: ScreenUtil().setSp(28),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: ScreenUtil().setSp(26)),
                  decoration: InputDecoration(
                    hintText: '请输入原密码',
                    isDense: true,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromRGBO(31, 120, 228, 1),
                      width: 2,
                    )),
                  ),
                  onSubmitted: (text) {
                    print(text);
                  },
                ),Container(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(58),bottom: ScreenUtil().setHeight(10)),
                  child: Text(
                    "新密码",
                    style: TextStyle(
                        color: Color.fromRGBO(114, 115, 125, 1),
                        fontSize: ScreenUtil().setSp(28),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: ScreenUtil().setSp(26)),
                  decoration: InputDecoration(
                    hintText: '请输入新密码',
                    isDense: true,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromRGBO(31, 120, 228, 1),
                      width: 2,
                    )),
                  ),
                  onSubmitted: (text) {
                    print(text);
                  },
                ),
                Container(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(58),bottom: ScreenUtil().setHeight(10)),
                  child: Text(
                    "确认新密码密码",
                    style: TextStyle(
                        color: Color.fromRGBO(114, 115, 125, 1),
                        fontSize: ScreenUtil().setSp(28),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: ScreenUtil().setSp(26)),
                  decoration: InputDecoration(
                    hintText: '请确认新密码',
                    isDense: true,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromRGBO(31, 120, 228, 1),
                      width: 2,
                    )),
                  ),
                  onSubmitted: (text) {
                    print(text);
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: ScreenUtil().setHeight(68)),
            color: Color.fromRGBO(31, 120, 228, 1),
            width: double.infinity,
            padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(2),
                bottom: ScreenUtil().setHeight(2)),
            child: RaisedButton(
                elevation: 0,
                child: Text(
                  "下一步",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                color: Color.fromRGBO(31, 120, 228, 1),
                onPressed: () {
                  print("下一步");
                  
                })),
              ],
            ),
          )
        ],
      ),
    );
  }
}
