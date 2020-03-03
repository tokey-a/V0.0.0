import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _switchItem = true;
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
          "设置e",
          style: TextStyle(
            color: Color.fromRGBO(92, 92, 92, 1),
            fontSize: ScreenUtil().setSp(32),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[

          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey),
                  )),
              padding: EdgeInsets.fromLTRB(
                  ScreenUtil().setWidth(36),
                  ScreenUtil().setHeight(30),
                  ScreenUtil().setWidth(36),
                  ScreenUtil().setHeight(30)),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
                    child: Text(
                      "消息推送",
                      style: TextStyle(
                          color: Color.fromRGBO(92, 92, 92, 1),
                          fontSize: ScreenUtil().setSp(28),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                      child: Container(
                          alignment: Alignment.centerRight,
                          child: CupertinoSwitch(
                            activeColor: Color.fromRGBO(31, 120, 228, 1),
                            value: _switchItem,
                            onChanged: (bool e) {
                              setState(() {
                                _switchItem = e;
                              });
                            },
                          )))
                ],
              ),
            ),
            onTap: () {
              print("我的");
            },
          ),
         
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey),
                  )),
              padding: EdgeInsets.fromLTRB(
                  ScreenUtil().setWidth(36),
                  ScreenUtil().setHeight(36),
                  ScreenUtil().setWidth(36),
                  ScreenUtil().setHeight(36)),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
                    child: Text(
                      "清理缓存",
                      style: TextStyle(
                          color: Color.fromRGBO(92, 92, 92, 1),
                          fontSize: ScreenUtil().setSp(28),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                      child: Container(
                          alignment: Alignment.centerRight,
                          child: Text("133M"),
                  ))
                ],
              ),
            ),
            onTap: () {
              print("我的");
            },
          ),
         
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey),
                  )),
              padding: EdgeInsets.fromLTRB(
                  ScreenUtil().setWidth(36),
                  ScreenUtil().setHeight(36),
                  ScreenUtil().setWidth(36),
                  ScreenUtil().setHeight(36)),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
                    child: Text(
                      "版本更新",
                      style: TextStyle(
                          color: Color.fromRGBO(92, 92, 92, 1),
                          fontSize: ScreenUtil().setSp(28),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                      child: Container(
                          alignment: Alignment.centerRight,
                          child: Text("V1.0.0"),
                  ))
                ],
              ),
            ),
            onTap: () {
              print("我的");
            },
          ),
         Container(
           margin: EdgeInsets.only(top: ScreenUtil().setHeight(100)),
           child: RaisedButton(
             padding: EdgeInsets.only(left: ScreenUtil().setWidth(180),right: ScreenUtil().setWidth(180),top: ScreenUtil().setHeight(16),bottom: ScreenUtil().setHeight(16)),
             child: Text("退出登录",style: TextStyle(
               color: Color.fromRGBO(231, 118, 110, 1),
               fontSize: ScreenUtil().setSp(32)
             ),),
             onPressed: (){
             print("退出登录");
           })),
         
        ],
      ),
    );
  }
}
